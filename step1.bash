#!/bin/bash -xve

echo 'deb http://packages.ros.org/ros/ubuntu trusty main' > /tmp/$$-deb
sudo mv /tmp/$$-deb /etc/apt/sources.list.d/ros-latest.list

sudo apt-get install curl
curl -k https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add -
sudo apt-get update

sudo apt-get install ros-indigo-ros-base

sudo rosdep init
sudo rosdep update

sudo apt-get install python-rosinstall
sudo apt-get install make
sudo apt-get install linux-headers-$(uname -r)