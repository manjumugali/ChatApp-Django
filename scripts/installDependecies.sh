#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
sudo apt-get install python3-venv -y
python3 -m venv env
source ./env/bin/activate
pip3 install gunicorn
git clone https://github.com/manjumugali/ChatApp-Django.git
cd ChatApp-Django/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
