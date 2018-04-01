FROM kalilinux/kali-linux-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && \
apt install -y \
kali-linux-top10

RUN apt update -y && apt dist-upgrade -y

RUN apt autoremove && \
rm -rf /var/lib/apt/lists/*