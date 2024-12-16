FROM gradle
RUN apt update && \
    apt install -y docker.io && \
    apt clean
RUN usermod -aG docker root
CMD ["tail", "-f", "/dev/null"]
