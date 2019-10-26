FROM  ruby:2.4-alpine

RUN apk add --no-cache build-base gcc bash
RUN gem install jekyll bundler

WORKDIR /site
ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install

ADD . /site
CMD  bundle exec jekyll server --host 0.0.0.0
