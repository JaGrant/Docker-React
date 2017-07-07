## Docker React

FROM debian:jessie

## The maintainer name and email
MAINTAINER Jason Grant <jasongrant@serverfox.co.uk>

# Install additional packages (vim & cron)
RUN apt-get update \
  && apt-get -y install vim \
  && apt-get -y install curl

# Curl latest version of Node as Debians repo is so old, installing node also installs npm
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get -y install nodejs
RUN apt-get -y install build-essential

# Import Services Script
ADD scripts/startServices.sh /
RUN chmod 0644 /startServices.sh
RUN chmod a+x /startServices.sh


CMD [ "/startServices.sh" ]
