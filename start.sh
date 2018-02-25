until mysqladmin ping -h app-db -P3306 --silent; do
  echo "waiting for mysql..."
  sleep 1s
done
echo "success to connect mysql"

bundle exec rake db:migrate
bundle exec rake db:seed
rails server -P /tmp/rails-app.pid

