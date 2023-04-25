#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

if [[ $CREATE_SUPERUSER ]];
then
  python drfsimplecrud-42q0/manage.py createsuperuser --no-input
fi

python manage.py collectstatic --no-input
python manage.py migrate