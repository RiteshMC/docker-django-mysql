Docker - Django2.2 - Mysql5.7
===

# Overview

For information, see the [IZE Backlog page](https://ize.backlog.jp/git/ALS_SOURCE/anshinlight_web.git).

## System environment
| OS | DBMS |
| --- | --- |
| Docker Python3.6 | MySQL 5.7 |

# System Requirement

## Required version
1. docker 19+
2. docker-compose 1.25+
3. django-admin

## How to start
```
$ git clone https://github.com/Riteshmc/docker-django-mysql.git
$ cd docker-django-mysql
$ docker-compose build
$ docker-compose up -d
$ docker-compose run --rm web python manage.py migrate
$ docker-compose run --rm web python manage.py createsuperuser
```

## Start the project
```
homepage url : http://localhost:8000/
adminpanel url : http://localhost:8000/admin/
```
