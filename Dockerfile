FROM  ruby:2.4-alpine

RUN apk add --no-cache build-base gcc bash
RUN gem install jekyll bundler
ADD . /site
WORKDIR /site
RUN bundle install 

CMD  bundle exec jekyll server --host 0.0.0.0 