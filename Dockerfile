## Docker React

FROM debian:jessie

## The maintainer name and email
MAINTAINER Jason Grant <jasongrant@serverfox.co.uk>

# Install additional packages (vim & cron)
RUN apt-get update \
  && apt-get -y install vim \
  && apt-get -y install nodejs-legacy \
  && apt-get -y install npm \
  && apt-get -y install webpack \
  && apt-get -y install webpack -g \




# Import Services Script
ADD scripts/startServices.sh /
RUN chmod 0644 /startServices.sh
RUN chmod a+x /startServices.sh

npm init
npm install -S babel-loader npm install -S babel-plugin-add-module-exports npm install -S babel-plugin-react-html-attrs npm install -S babel-plugin-transform-class-properties npm install -S babel-plugin-transform-decorators-legacy npm install -S babel-preset-es2015 npm install -S babel-preset-react npm install -S babel-preset-stage-0 npm install -S react npm install -S react-dom npm install -S webpack npm install -S webpack-dev-server
npm install -S react-router


CMD [ "/startServices.sh" ]
