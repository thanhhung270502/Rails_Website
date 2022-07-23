# syntax=docker/dockerfile:1
FROM ruby:3.1.2

# SOS
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /railsWeb
WORKDIR /railsWeb

ADD Gemfile /railsWeb/Gemfile
ADD Gemfile.lock /railsWeb/Gemfile.lock

RUN bundle install

ADD . /railsWeb