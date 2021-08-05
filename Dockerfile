FROM amazonlinux:latest
LABEL maintainer='jasonwmiller'
RUN yum update -y && \
    yum install -y bash awscli git vim-enhanced jq wget curl  && \
    amazon-linux-extras enable golang1.11 python3.8 rust1 docker java-openjdk11 && \
    yum clean metadata && \
    yum install -y golang python3.8 rust docker java-openjdk && \
    yum clean all && \
    rm -rf /var/cache/yum
CMD ["/bin/bash"]

