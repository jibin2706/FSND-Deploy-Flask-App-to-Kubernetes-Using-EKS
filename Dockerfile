FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["gunicorn"  , "-b", "0.0.0.0:8080", "main:APP"]