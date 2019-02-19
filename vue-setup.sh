#!/bin/bash
# author: Ankit Jain 
# Bash file for istalling vue

echo "Welcome file"
# Install Vue js 
npm install -g @vue/cli

vue --version

yarn global add @vue/cli-init

vue init webpack first-vue-project

echo "Exit Bash file"
