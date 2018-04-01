FROM kalilinux/kali-linux-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && \
apt install -y \
kali-linux-top10 \
x11vnc \
xvfb \
xfce4

ADD startup.sh /startup.sh
RUN chmod 0755 /startup.sh

# RUN x11vnc -storepasswd CHANGEME /etc/x11vnc.pas
ENV VNC_PASSWD CHANGEME

RUN apt update -y && apt dist-upgrade -y

RUN apt autoremove && \
rm -rf /var/lib/apt/lists/*

EXPOSE 5900

WORKDIR /root/

CMD /startup.sh