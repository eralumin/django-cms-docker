#!/bin/bash


cd /home/myapp

djangocms -f -p -q . myapp &> /dev/null
echo "$?"
if [ $? -ne 0 ]; then
echo "if"
#	python manage.py runserver
/bin/bash
else
echo "else"
	djangocms -f -p . myapp
#	python manage.py runserver
echo "$?""
/bin/bash
fi
