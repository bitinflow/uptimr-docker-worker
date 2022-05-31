FROM ubuntu:focal

# Set timezone
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update and install core components
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
    software-properties-common
RUN add-apt-repository ppa:ondrej/php -y

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 1A7CD6B10EBDBB79
RUN add-apt-repository 'deb [arch=arm64] https://deb.uptimr.io/ubuntu focal main'

RUN apt-get install -y uptimr

CMD /usr/local/bin/uptimr monitor:check --continuously
