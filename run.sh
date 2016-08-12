#!/bin/bash


if test "$(ls -A "/usr/src/app" &> /dev/null)"; then
	python manage.py runserver
else
	read -p "Project Name: " projectname
	djangocms -f -p . $projectname
	python manage.py runserver
fi
