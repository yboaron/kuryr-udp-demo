FROM centos:7
ENV container docker
RUN yum update -y
RUN yum install --assumeyes python bash openssh-client net-tools
COPY server.py /server.py
RUN useradd -s /bin/bash valjean
USER valjean

EXPOSE 9090
ENTRYPOINT ["/server.py"]
