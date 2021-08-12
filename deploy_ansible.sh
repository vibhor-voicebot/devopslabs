#!/bin/sh

#mkdir -p $HOME/var/tf
#cd $HOME/var/tf

git clone gituser@sreengine:webapp.git
cd webapp

i=`cat version`
echo "Build Image $i"
docker build -t $i .

ansible-playbook playbook.yml -e 'ansible_python_interpreter=/usr/bin/python3'

docker ps

cd ..

rm -fr webapp
