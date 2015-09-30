#!/bin/bash

if [[ $TRAVIS_BRANCH == 'master' ]] ; then
  bundle exec rake stage
  bundle install
  bundle exec jekyll build
  bundle exec htmlproof ./_site
  jekyll build
else
  echo 'Invalid branch. You can only deploy from master.'
  exit 1
fi
