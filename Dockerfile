FROM  debian:9

RUN apt-get update
RUN apt-get install -y nodejs ruby-dev
RUN apt-get install -y make gcc
RUN apt-get install -y libruby
RUN apt-get install -y libssl-dev
RUN apt-get install -y g++
RUN apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN gem install jekyll
RUN gem install bundler
COPY . /build
RUN cd /build && bundle  install 

CMD cd /build &&  bundle exec jekyll server --host 0.0.0.0   