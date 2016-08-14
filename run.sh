#!/bin/bash


if test "$(ls -A "/usr/src/app" &> /dev/null)"; then
	pip install --no-cache-dir -r requirements.txt
	python manage.py runserver 0.0.0.0:8000
else
	read -p "Project Name: " projectname
	djangocms -f -p . $projectname
	python manage.py runserver 0.0.0.0:8000
fi
