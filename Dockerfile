FROM python:3.8.5

WORKDIR /code

COPY . /code

RUN pip install -r requirements.txt

CMD python manage.py makemigrations

CMD python manage.py migrate
