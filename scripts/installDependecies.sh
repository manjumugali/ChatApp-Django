
#!/bin/bash
sudo apt-get update
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get update
sudo pip3 install virtualenv
virtualenv venv
source venv/bin/activate
pip3 install gunicorn

