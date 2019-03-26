#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
pip3 install virtualenv
virtualenv /home/ubuntu/venv
source venv/bin/activate
git clone https://github.com/manjumugali/ChatApp-Django.git
cd ChatApp-Django/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn
python3 manage.py collectstatic
sudo cp /home/ubuntu/ChatApp-Django/files/gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo cp /home/ubuntu/ChatApp-Django/files/ChatApp-Django /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/ChatApp-Django /etc/nginx/sites-enable
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
