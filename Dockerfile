FROM docker:20.10.17-dind

WORKDIR /usr/src/app

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker

RUN sudo apt-get install ssh && sudo systemctl ssh start && sudo systemctl ssh enable && service ssh status

EXPOSE 3000
EXPOSE 4200

CMD ["curl -sSL https://install.pi-hole.net | bash"]
