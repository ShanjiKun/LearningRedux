#!/bin/sh

# if [ -f ".ruby-version" ] && [ -z "$(rbenv version-name 2>/dev/null)" ]; then
#   echo "==> Installing Ruby…"
#   rbenv install --skip-existing
  which bundle >/dev/null 2>&1  || {
    echo "==> Installing bundler…"
    gem install bundler
#     rbenv rehash
  }
# fi

if [ -f "Gemfile" ]; then
#   bundle check --path vendor/gems >/dev/null 2>&1  || {
#     echo "==> Installing gem dependencies…"
#     bundle install --path vendor/gems --quiet --without production
#   }
  bundle check >/dev/null 2>&1  || {
    echo "==> Installing gem dependencies…"
    bundle install --quiet --without production
  }
fi
