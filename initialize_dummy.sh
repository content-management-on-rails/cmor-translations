#!/bin/bash

# Delete old dummy app
rm -rf spec/dummy

# Generate new dummy app
DISABLE_MIGRATE=true rake dummy:app

if [ ! -d "spec/dummy/config" ]; then exit 1; fi

# Cleanup
rm spec/dummy/.ruby-version
rm spec/dummy/Gemfile

cd spec/dummy

# Use correct Gemfile
sed -i "s|../Gemfile|../../../Gemfile|g" config/boot.rb

# Remove sprockets ralated stuff
sed -i "s|config.assets|# config.assets|g" config/environments/development.rb
sed -i "s|config.assets|# config.assets|g" config/environments/test.rb
sed -i "s|config.assets|# config.assets|g" config/environments/production.rb
rm config/initializers/assets.rb

# Setup i18n
touch config/initializers/i18n.rb
echo "Rails.application.config.i18n.available_locales = [:en, :de]" >> config/initializers/i18n.rb

# Setup cmor-translations
rails cmor_translations:install:migrations
rails g cmor:translations:install

# Setup database
rails db:migrate db:test:prepare
