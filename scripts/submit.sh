#!/usr/bin/ssh-agent /bin/sh

set -x

git config --global user.email "wojciech@koszek.com"
git config --global user.name "Wojciech A. Koszek, T"
git config --global push.default simple

pwd
git clone https://github.com/wkoszek/travis_deploy.git
ls -la
ls -la travis_deploy
openssl aes-256-cbc -K $encrypted_a95d9d0517a4_key -iv $encrypted_a95d9d0517a4_iv -in travis_deploy/book-programming-ruby.enc -out book-programming-ruby.key -d

chmod 600 book-programming-ruby.key
ssh-add book-programming-ruby.key

git clone git@github.com:wkoszek/book-programming-ruby.git
cd book-programming-ruby
git checkout -b gh-pages --track origin/gh-pages

OUT=results/${TRAVIS_BUILD_NUMBER}.${RUBY_VERSION}.${MODE}.out

mkdir -p results
mv ../out.${MODE} $OUT
git add $OUT
git commit -m "New report `date`"
git push origin gh-pages
