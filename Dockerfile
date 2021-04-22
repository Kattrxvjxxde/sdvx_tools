FROM minio/mc:RELEASE.2020-11-17T00-39-14Z AS mc
FROM ruby:3.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update -qq && apt-get install -y \
  vim \
  less \
  gosu \
  sudo \
  nodejs \
  yarn \
  imagemagick \
  build-essential \
  libpq-dev \
  default-libmysqlclient-dev

COPY --from=mc /usr/bin/mc /usr/bin/mc

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install
