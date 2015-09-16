#!/bin/sh

git clone https://github.com/wkoszek/travis_deploy.git
openssl aes-256-cbc -K $encrypted_a95d9d0517a4_key -iv $encrypted_a95d9d0517a4_iv -in travis_deploy/book-programming-ruby.enc -out book-programming-ruby.key -d
ssh-add book-programming-ruby.key
git clone git@github.com:wkoszek/book-programming-ruby.git
cd book-programming-ruby
git co gh-pages
mv ../out.${MODE} out.${MODE}.${TRAVIS_BUILD_NUMBER}
git add out.${MODE}.${TRAVIS_BUILD_NUMBER}
git commit -m "Travis out.${MODE} build ${TRAVIS_BUILD_NUMBER}"
git push
