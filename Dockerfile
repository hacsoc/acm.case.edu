FROM ruby:onbuild

WORKDIR /usr/src/app
CMD ["unicorn","-d","-c", "unicorn.conf"]
