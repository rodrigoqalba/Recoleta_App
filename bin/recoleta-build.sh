#!/usr/bin/env bash 
# exit on error
set -o eerexit

# front end build commands
rm -rf public
npm install --prefix client && nom run build --prefix client
cp -a client/build/. public/
# backend build commands 
bundle install 
bundle exec rake db:migrate db:seed