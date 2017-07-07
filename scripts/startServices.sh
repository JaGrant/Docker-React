#!/bin/bash
echo "---- startServices.sh ---> Configuring container enviroment"
# ======================== Preparing container ========================

cd site
#npm init
npm install
#npm install -g webpack
#npm install -S webpack
#npm install -S jquery
#npm install -S babel-loader
#npm install -S babel-plugin-add-module-exports
#npm install -S babel-plugin-react-html-attrs
#npm install -S babel-plugin-transform-class-properties
#npm install -S babel-plugin-transform-decorators-legacy
#npm install -S babel-preset-es2015
#npm install -S babel-preset-react
#npm install -S babel-preset-stage-0
#npm install -S react
#npm install -S react-dom
#npm install -S webpack
#npm install -S webpack-dev-server
#npm install -S react-router
#npm install react-router-active-component
#npm install -S history@1
npm run dev

# ============================= Hold Container ========================
# -- prevent the container from exiting
echo "entering sleep loop"
while true;do sleep 3600;done
