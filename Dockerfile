FROM wibumylife/wibumylife-ubot:buster

WORKDIR /root/userbot

COPY . .

RUN pip3 install --upgrade pip setuptools

RUN pip install -U -r requirements.txt

CMD ["python3", "-m", "userbot"]
