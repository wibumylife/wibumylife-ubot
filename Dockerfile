FROM priiiiyo/mega-sdk-python:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
COPY /root/userbot
RUN chmod 600 /usr/src/app/userbot
RUN chmod +x aria.sh

CMD ["bash","start.sh"]
