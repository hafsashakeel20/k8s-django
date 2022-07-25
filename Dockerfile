FROM python:3.10-alpine3.14
ENV PYTHONUNBUFFERED 1
WORKDIR /django-app
COPY /FirstDjangoApp/requirements.txt /django-app/requirements.txt
RUN pip install -r requirements.txt
COPY /FirstDjangoApp/FirstDjangoApp /django-app/FirstDjangoApp
COPY /FirstDjangoApp/firstApp /django-app/firstApp
COPY /FirstDjangoApp/manage.py /django-app/manage.py
COPY /FirstDjangoApp/db.sqlite3 /django-app/db.sqlite3
EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]