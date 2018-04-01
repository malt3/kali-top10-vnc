FROM kalilinux/kali-linux-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && \
apt install -y \
kali-linux-top10 \
x11vnc \
xfce4

RUN sudo x11vnc -storepasswd CHANGEME /etc/x11vnc.pass

RUN apt update -y && apt dist-upgrade -y

RUN apt autoremove && \
rm -rf /var/lib/apt/lists/*

EXPOSE 5900

WORKDIR /root/