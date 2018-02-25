#!/bin/bash

until mysqladmin ping -h $1 -P$2 --silent; do
  echo "waiting for mysql..."
  sleep 1s
done
echo "success to connect mysql"

bundle exec rake db:migrate
bundle exec rake db:seed
rails server -P /tmp/rails-app.pid

