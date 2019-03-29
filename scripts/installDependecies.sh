
#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
sudo pip3 install virtualenv
virtualenv --python=python3 /home/ubuntu/venv
source /home/ubuntu/venv/bin/activate
cd /home/ubuntu/ChatApp-Django/
pip3 install -r requirements.txt
pip3 install django bcrypt django-extensions
python3 manage.py collectstatic
gunicorn --bind 0.0.0.0:8000 ChatApp-Django.wsgi:application


