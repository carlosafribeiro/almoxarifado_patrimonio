#!/bin/bash

#instalação do sistema

sudo apt-get install git
sudo apt-get install python-pip
sudo apt-get install python-setuptools
sudo pip install django
sudo pip install piston-django
sudo apt-get install python-django-piston python-piston-mini-client
sudo easy_install -U django_evolution

python manage.py syncdb
python manage.py runserver
