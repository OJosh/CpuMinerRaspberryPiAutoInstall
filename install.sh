#!/bin/bash
#Auto setup for a rapssbery pi miner useing the cpuminer-multi
#Any issues please contact me there
#dependencies

sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev -y 
sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install -y --force-yes autoconf automake libtool
sudo apt-get install screen -y
sudo apt-get install build-essential -y

#Installing the miner

git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi

#Building the miner

./autogen.sh
./build.sh

#Mining
#

screen ./cpuminer -a cryptonight -o stratum+tcp://teracycle.net:3333 -p x -u (wallet)  --api-bind 0
