FROM debian:latest

USER root

RUN apt update -y && apt upgrade -y && apt install bash -y && apt install wget -y && dpkg-reconfigure tzdata

RUN wget -O basic-install.sh https://install.pi-hole.net

RUN sh basic-install.sh

# RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

# RUN adduser -h /home/vansh -s /bin/sh -D vansh

# RUN echo -n 'vansh:some_password_here' | chpasswd

# ENTRYPOINT ["/entrypoint.sh"]

# EXPOSE 22

# COPY entrypoint.sh /

# RUN chmod +x -v entrypoint.sh

# RUN cat /etc/os-release

# RUN docker run -d \
#     --name pihole \
#     -p 53:53/tcp -p 53:53/udp \
#     -p 80:80 \
#     -e TZ="America/Chicago" \
#     -v "${PIHOLE_BASE}/etc-pihole:/etc/pihole" \
#     -v "${PIHOLE_BASE}/etc-dnsmasq.d:/etc/dnsmasq.d" \
#     --dns=0.0.0.0 --dns=1.1.1.1 \
#     --restart=unless-stopped \
#     --hostname pi.hole \
#     -e VIRTUAL_HOST="pi.hole" \
#     -e PROXY_LOCATION="pi.hole" \
#     -e ServerIP="0.0.0.0" \
#     pihole/pihole:latest

# RUN ip addr


# RUN docker-compose up -d