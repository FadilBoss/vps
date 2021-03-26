# We're using ubuntu 18:04 LTS
FROM heroku/heroku:18

RUN apt update
RUN apt install -y sudo systemd snapd
RUN useradd -m -s /bin/bash -r heroku
RUN service ssh start
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN ngrok authtoken 1XC5VFC8GSEO9CDtKAlFfp4mosq_5B8xZyHN3wB2QXW4UL1GJ
RUN ngrok tcp 22
RUN curl -s http://localhost:4040/api/tunnels
