FROM ruby:2.4.0

RUN mkdir -p /rack_hello_world
ADD . /rack_hello_world
WORKDIR /rack_hello_world

RUN apt-get update
RUN gem install bundler
RUN bundle install
