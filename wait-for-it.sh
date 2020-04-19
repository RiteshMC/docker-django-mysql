#!/bin/bash

set -e

host="$1"
user="$2"
password="$3"
shift
cmd="mysql --version"

until mysql -h "$host" -u "$user" -p"$password" --execute 'SHOW DATABASES;'; do
  >&2 echo "Mysql is unavailable - sleeping"
  sleep 3
done

>&2 echo "Mysql is up - executing command"
exec $cmd
