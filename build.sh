#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
pip install gunicorn==19.7.1

python manage.py collectstatic --no-input
python manage.py migrate