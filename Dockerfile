FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client nodejs
ENV RAILS_ROOT /mirror
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT
COPY Gemfile $RAILS_ROOT/Gemfile
COPY Gemfile.lock $RAILS_ROOT/Gemfile.lock
RUN bundle install
COPY . $RAILS_ROOT
