FROM ruby:2.2.3-onbuild

WORKDIR /usr/src/app
CMD ["unicorn","-d","-c", "unicorn.conf"]
