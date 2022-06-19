FROM docker:20.10.17-dind

WORKDIR /usr/src/app

USER root

RUN sudo apt-get update -y && sudo apt-get upgrade

RUN sudo apt-get install ssh && sudo systemctl ssh start && sudo systemctl ssh enable && service ssh status

EXPOSE 3000
EXPOSE 4200

CMD ["curl -sSL https://install.pi-hole.net | bash"]
