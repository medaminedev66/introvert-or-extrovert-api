#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# ./bin/rails assets:precompile
# ./bin/rails rake assets:clean
# ./bin/rails  db:migrate
# ./bin/rails  db:seed
echo "Running database migrations..."
bundle exec rails db:migrate
bundle exec rails db:seed
