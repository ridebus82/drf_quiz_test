FROM python:3.9.0

WORKDIR /home/

RUN echo "g45g45g45g4g5"

RUN git clone https://github.com/ridebus82/drf_quiz_test.git

WORKDIR /home/drf_quiz_test/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

RUN echo "django-insecure-@7167t@w1up1$^!xg3@!valf_&13=+f35p00fft!8ybb0#=nla" > .env

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=drf_quiz_test.settings.deploy && gunicorn drf_quiz_test.wsgi --env DJANGO_SETTINGS_MODULE=drf_quiz_test.settings.deploy --bind 0.0.0.0:8000"]