
#!/bin/bash
sudo apt-get update
sudo pip3 install virtualenv
virtualenv venv
source venv/bin/activate
sudo service nginx restart
