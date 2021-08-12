#!/bin/sh

#mkdir -p $HOME/var/tf
#cd $HOME/var/tf

git clone https://github.com/vibhor-voicebot/devopslabs.git
cd devopslabs

#i=`cat version`
echo "Building a docker image Apache 0.2"
docker build -t apache:0.2 .

ansible-playbook playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'

docker ps

cd ..

#rm -fr devopslabs
