# Using Python Slim-Buster
FROM wibumylife/wibumylife-ubot:buster

# Clone repo and prepare working directory
RUN git clone -b wibumylife-ubot https://github.com/wibumylife/wibumylife-ubot /root/userbot
    && chmod 777 /root/userbot \
    && mkdir /root/userbot/bin/

# Copies config.env (if exists)
COPY ./sample_config.env ./config.env* /root/userbot/

# Setup Working Directory
WORKDIR /root/userbot/

# Finalization
CMD ["python3","-m","userbot"]
