#!/usr/bin/env bash
# kill instances
killall node
# Install node
sudo apt update && sudo apt install nodejs npm
# Install truffle
sudo npm install truffle
# change directory into folder where application is downloaded
cd DevopsApp/
# Install application dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# Start the application with the process name example app using pm2
npm start

