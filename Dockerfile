FROM ruby:3.0
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /myapp_rails
COPY Gemfile Gemfile.lock /myapp_rails/
RUN bundle install