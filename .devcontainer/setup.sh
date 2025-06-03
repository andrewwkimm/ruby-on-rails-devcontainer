#!/bin/bash

if [ ! -f "./config/application.rb" ]; then
  read -p "Enter your project name: " project_name
  rails new . --force --skip-bundle --skip-git --database=postgresql
fi

bundle install
yarn install
