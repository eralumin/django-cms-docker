#!/bin/bash


djangocms -f -p -q . myapp &> /dev/null
echo "$?"
if [ $? -ne 0 ]; then
echo "if"
#	python manage.py runserver
else
echo "else"
	djangocms -f -p . myapp
#	python manage.py runserver
echo "$?""
fi
