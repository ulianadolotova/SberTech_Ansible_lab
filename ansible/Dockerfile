FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y python3 python3-pip python3-apt && \
    apt install -y ansible && \
    apt install -y sshpass && \
    apt install -y docker.io
RUN usermod -aG docker root
WORKDIR /ansible
CMD ["tail", "-f", "/dev/null"]
