#!/bin/bash

# Importing the MongoDB public key
# installing gnupg if not installed
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

# Generating a dependencies file
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list

# Refreshing the local database with the packages
sudo apt-get update

# check the version with lsb_release -r -s and import the right modules

# if 22.04
echo "deb http://security.ubuntu.com/ubuntu impish-security main" | sudo tee /etc/apt/sources.list.d/impish-security.list
sudo apt-get update
sudo apt-get install libssl1.1

# Install the last stable MongoDB version and all the necessary packages on our system
sudo apt-get install mongodb-org

