FROM wibumylife/wibumylife-ubot:buster

# Clone repo and prepare working directory
RUN git clone -b master https://github.com/BianSepang/ProjectBish /home/projectbish/
RUN mkdir /home/projectbish/bin/
WORKDIR /home/projectbish/

# Finalization
CMD ["python3","-m","userbot"]
