FROM python:3.9

WORKDIR /code

ENV LISTEN_PORT 8080

EXPOSE 8080

COPY ./app/requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

CMD ["gunicorn", "--conf", "--bind", "0.0.0.0:80", "app.main:app"]