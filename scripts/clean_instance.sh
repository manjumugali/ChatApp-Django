#!/bin/bash
sudo systemctl stop gunicorn
sudo systemctl stop nginx
sudo rm -rf /home/ubuntu/*
sudo rm -rf /etc/systemd/system/gunicorn.service
sudo rm -rf /etc/nginx/sites-available/ChatApp-Djnago
