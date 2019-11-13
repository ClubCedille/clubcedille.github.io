#!/bin/bash

bundle install
bundle exec jekyll build
bundle exec htmlproof ./_site
bundle exec jekyll build
