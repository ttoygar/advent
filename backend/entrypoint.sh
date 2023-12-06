#!/bin/bash

python manage.py wait_for_db

python manage.py migrate

python manage.py collectstatic --no-input

exec "$@"