#!/bin/bash

# Update package lists
sudo apt-get update

# Install Node.js
sudo apt-get install -y nodejs npm

# Install Puppeteer VPN
sudo npm install -g puppeteer-extra puppeteer-extra-plugin-stealth puppeteer-extra-plugin-anonymize-ua puppeteer-extra-plugin-proxy

# Install Chromium Web Browser
sudo apt-get install -y chromium-browser

# Install FreeRDP
sudo apt-get install xrdp
sudo systemctl start xrdp
sudo systemctl enable xrdp
(sudo ufw allow 3389/tcp)