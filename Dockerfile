FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    && apt-get install -y mariadb-client \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir  -p /var/www/webapp
WORKDIR /var/www/webapp

ADD requirements.txt /var/www/webapp/
RUN pip --version
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY ./wait-for-it.sh /usr/wait-for-it.sh
RUN chmod +x /usr/wait-for-it.sh

ADD ./webapp /var/www/webapp/