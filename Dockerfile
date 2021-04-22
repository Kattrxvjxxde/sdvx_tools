FROM minio/mc:RELEASE.2020-11-17T00-39-14Z AS mc
FROM node:14.15.1-buster-slim AS node
FROM ruby:3.0

# yarn等、必要なパッケージのインストール
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

# minio client インストール
COPY --from=mc /usr/bin/mc /usr/bin/mc

# node インストール
COPY --from=node /usr/local /usr/local
COPY --from=node /opt /opt

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install
