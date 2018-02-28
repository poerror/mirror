FROM ruby:2.5.0

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client nodejs yarn
ENV RAILS_ROOT /mirror
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT
COPY Gemfile* $RAILS_ROOT/
RUN bundle install
COPY . $RAILS_ROOT
