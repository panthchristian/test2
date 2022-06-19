FROM docker:20.10.17-dind

RUN apk add --update --no-cache openssh 

RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

RUN adduser -h /home/vansh -s /bin/sh -D vansh

RUN echo -n 'vansh:some_password_here' | chpasswd

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 22

COPY entrypoint.sh /

RUN chmod +x -v entrypoint.sh

RUN ./docker_run.sh