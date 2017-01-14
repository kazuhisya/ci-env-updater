FROM centos:7
MAINTAINER Kazuhisa Hara <kazuhisya@gmail.com>

RUN yum install -y epel-release && yum install -y python-pip python-requests python-dateutil PyYAML python-beautifulsoup4
RUN pip install circlecli
COPY / /ci-env-updater
WORKDIR /ci-env-updater
RUN mv ./circlecli.ini ~/.circlecli.ini
CMD ["./updater.sh"]
