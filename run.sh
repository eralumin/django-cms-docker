#!/bin/bash


cd /home/myapp

djangocms -f -p -q . myapp &> /dev/null
echo "$?"""
if [ $? -ne 0 ]; then
	python manage.py runserver
else
	djangocms -f -p . myapp
	python manage.py runserver
fi
