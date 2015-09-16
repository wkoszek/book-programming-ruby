#!/usr/bin/ssh-agent /bin/sh

set -x

git config --global user.email "wojciech@koszek.com"
git config --global user.name "Wojciech A. Koszek, T"

pwd
git clone https://github.com/wkoszek/travis_deploy.git
ls -la
ls -la travis_deploy
openssl aes-256-cbc -K $encrypted_a95d9d0517a4_key -iv $encrypted_a95d9d0517a4_iv -in travis_deploy/book-programming-ruby.enc -out book-programming-ruby.key -d
chmod 600 book-programming-ruby.key
ssh-add book-programming-ruby.key

git clone git@github.com:wkoszek/book-programming-ruby.git
cd book-programming-ruby
git checkout -B gh-pages

mkdir -p results
mv ../out.${MODE} results/${TRAVIS_BUILD_NUMBER}.out.${MODE}
git add results/${TRAVIS_BUILD_NUMBER}.out.${MODE}
git commit -m "Travis out.${MODE} build ${TRAVIS_BUILD_NUMBER}"
#git push
