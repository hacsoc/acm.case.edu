FROM ruby:onbuild

RUN gem install bundler
RUN bundle install
EXPOSE 9393

CMD ["shotgun","--host","0.0.0.0"]
