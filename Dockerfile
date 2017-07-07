## Docker React

FROM debian:jessie

## The maintainer name and email
MAINTAINER Jason Grant <jasongrant@serverfox.co.uk>

# Install additional packages (vim & cron)
RUN apt-get update \
  && apt-get -y install vim \
  && apt-get -y install nodejs-legacy \
  && apt-get -y install npm


# Import Services Script
ADD scripts/startServices.sh /
RUN chmod 0644 /startServices.sh
RUN chmod a+x /startServices.sh


CMD [ "/startServices.sh" ]
