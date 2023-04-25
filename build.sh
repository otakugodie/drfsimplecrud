#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
<<<<<<< HEAD

if [[ $CREATE_SUPERUSER ]];
then
  python drfsimplecrud-42q0/manage.py createsuperuser --no-input
fi
=======
>>>>>>> 75036a470fdcce7930655e907bbd663ee1a810b4

python manage.py collectstatic --no-input
python manage.py migrate
