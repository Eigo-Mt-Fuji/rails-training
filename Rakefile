# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :run_docker do
  sh "docker-compose run -p 10081:3000 -d rails-app"
end

task :test_on_docker do
  sh 'SERVICE_NAME=$(docker ps --filter="ancestor=rails-app" --format "{{.Names}}"); docker exec -it $SERVICE_NAME sh -c "rake test"'
end

task :lint do
  sh 'rubocop --fail-level=C -la'
end
