#!/bin/sh

bundle install

bundle exec rake db:migrate
