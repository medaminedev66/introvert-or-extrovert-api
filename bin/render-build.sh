#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# ./bin/rails assets:precompile
# ./bin/rails rake assets:clean
./bin/rails rake db:migrate
./bin/rails rake db:seed