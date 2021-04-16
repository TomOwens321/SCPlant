FROM ruby:2.3-alpine

RUN apk add --update \
  build-base \
  mariadb-dev \
  sqlite-dev \
  nodejs \
  tzdata \
  && rm -rf /var/cache/apk/*

RUN gem update --system
RUN gem install bundler:2.0.0.pre.3

WORKDIR /SCPlant
COPY Gemfile* /SCPlant/
RUN bundle _2.0.0.pre.3_ install

WORKDIR /SCPlant
COPY . /SCPlant

EXPOSE 3000/tcp
CMD ["rails", "server", "-b", "0.0.0.0"]
