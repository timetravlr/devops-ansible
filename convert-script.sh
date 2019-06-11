#!/bin/bash

APP_MESSAGE="HELLO WORLD"

# install docker
yum install -y docker

# Simple script to install a docker container as a service
cp myapp.service /etc/systemd/system/myapp.service
systemctl enable /etc/systemd/system/myapp.service
systemctl daemon-reload


# wait for docker to be available 
systemctl start --quiet docker 
systemctl status --quiet docker 
echo "Waiting for docker to start"
while [ $? -ne  0 ] ; do
	sleep 1
	echo -n "#"
	systemctl status docker 2&1>> /dev/null
done

# build the app
mkdir /tmp/build_app
cp -r /vagrant/app /tmp/build_app
# fill in the APP variables
sed -i "s/APP_MESSAGE/${APP_MESSAGE}/g" /tmp/build_app/app/main.py
cp Dockerfile /tmp/build_app
cd /tmp/build_app/app
docker build -t myapp .

# start the app
systemctl start myapp
