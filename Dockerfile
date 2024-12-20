FROM ruby:3.0
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    libgmp-dev \
    nodejs \
    postgresql-client \
    yarn && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives
WORKDIR /myapp_rails
COPY Gemfile Gemfile.lock /myapp_rails/
RUN bundle install