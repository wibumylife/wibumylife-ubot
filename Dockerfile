FROM wibumylife/wibumylife-ubot:buster

RUN mkdir /root/userbot/.bin
WORKDIR /root/userbot

COPY . .

RUN pip3 install --upgrade pip setuptools

RUN pip install -U -r requirements.txt

CMD ["python3", "-m", "userbot"]
