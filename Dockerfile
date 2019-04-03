# You can use alpine, but ubuntu is a good choice since Sleepy-Duck is built for Ubuntu
FROM ubuntu 
LABEL Aleksandr Krasnov "alekforwork@gmail.com"

USER root

RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/AlekKras/Sleepy-Duck.git && cd Sleepy-Duck && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
