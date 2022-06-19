FROM docker:stable-dind

WORKDIR /usr/src/app

USER root

RUN apt-get update -y && apt-get upgrade -y

RUN sudo apt-get install ssh && sudo systemctl ssh start && sudo systemctl ssh enable && service ssh status

EXPOSE 3000
EXPOSE 4200

CMD ["curl -sSL https://install.pi-hole.net | bash"]
