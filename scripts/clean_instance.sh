#!/bin/bash

sudo systemctl stop gunicorn
sudo systemctl stop nginx
sudo rm -rf /home/ubuntu/*
