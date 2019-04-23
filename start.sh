#!/bin/bash
python3 manage.py migrate
python3 manage.py collectstatic
python3 manage.py runserver 0.0.0.0:8000
# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn ChatApp-Django.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3
