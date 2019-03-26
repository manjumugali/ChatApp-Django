#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
sudo pip3 install virtualenv
virtualenv venv
source venv/bin/activate
git clone https://github.com/manjumugali/ChatApp-Django.git
cd ChatApp-Django/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
python3 manage.py collectstatic
gunicorn --bind 0.0.0.0:8000 ChatApp-Django.wsgi:application
sudo exit
sudo mv /files/gunicorn.service/ /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

sudo mv /files/ChatApp-Django /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/ChatApp-Django /etc/nginx/sites-enable
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart
