FROM alpine:3.18
LABEL org.opencontainers.image.source="https://github.com/Dragory/bastion-host"

RUN apk update
RUN apk add openssh
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh
RUN ssh-keygen -A

COPY ./sshd_config /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]
