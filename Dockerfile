FROM wibumylife/wibumylife-ubot:buster

RUN git clone -b wibumylife-ubot https://github.com/wibumylife/wibumylife-ubot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

RUN pip3 install -r https://raw.githubusercontent.com/wibumylife/wibumylife-ubot/wibumylife-ubot/requirements.txt

CMD ["python3", "-m", "userbot"]

