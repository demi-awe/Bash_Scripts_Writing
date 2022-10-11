#!/bin/bash
echo "running apt update"
sudo apt update

echo "installing nodejs"
sudo apt install nodejs -y

echo "installing NPM"
sudo apt install npm -y

echo "installing yarn"
sudo npm install -g yarn -y

echo "installing pm2"
sudo npm install pm2 -g

echo "installing project"
npm install -y

echo "Building project"
yarn build

echo "changing directory"
cd dist

echo "starting project in directory"
pm2 start main.js

echo "list running apps"
pm2 list

echo "Application deployed successfully"
