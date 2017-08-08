#!/bin/bash
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y
sudo apt-get install ruby2.4 ruby2.4-dev -y
sudo apt-get install build-essential zlib1g-dev libgmp-dev libxml2 -y


sudo gem install bundler
sudo gem install rake
sudo gem install rails
sudo apt-get install nginx -y

sudo rm -r /etc/nginx/sites-available/default
sudo touch /etc/nginx/sites-available/default

sudo cp ~/ruby-environment/templates/nginx.conf /etc/nginx/sites-available/default

sudo service nginx reload

cd ~/ruby-environment/environment
./provision.sh
cd ..
bundle

