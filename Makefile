.PHONY: collectstatic format install lint migrate migrations runserver shell superuser test

collectstatic:
	python manage.py collectstatic --noinput

format:
	ruff format

freeze:
	pip freeze > requirements.txt

install:
	pip install -r requirements.txt

lint:
	flake8 .

migrate:
	python manage.py migrate

migrations:
	python manage.py makemigrations

runserver:
	python manage.py runserver

shell:
	python manage.py shell

superuser:
	python manage.py createsuperuser

test:
	python manage.py test
