FROM ubuntu
LABEL Aleksandr Krasnov "alekforwork@gmail.com"
USER root

# update apt && install nmap, nikto, hping3
RUN apt-get update && apt-get install -y git  && \
    apt-get install nmap -y && \ 
    apt-get install nikto -y && \
    apt-get install hping3 -qy --no-install-recommends && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY main.sh main.sh 
COPY scripts/ scripts/
