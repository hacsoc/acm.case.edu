FROM ruby:2.5-alpine

RUN apk add --update gcc g++ make linux-headers && rm -rf /var/cache/apk/*

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

WORKDIR /usr/src/app
CMD ["unicorn","-d","-c", "unicorn.conf"]
