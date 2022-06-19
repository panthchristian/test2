FROM docker:stable-dind

WORKDIR /usr/src/app

USER root

RUN apt update -y && apt upgrade -y

RUN sudo apt install ssh && sudo systemctl ssh start && sudo systemctl ssh enable && service ssh status

EXPOSE 3000
EXPOSE 4200

CMD ["curl -sSL https://install.pi-hole.net | bash"]
