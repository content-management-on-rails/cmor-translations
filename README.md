# CMOR Translations

## Installation

Add it to your Gemfile:

    # Gemfile
    gem 'cmor-translations'

Bundle:

    #> bundle install

Add Migrations and migrate:

    #> rails cmor_translations:install:migrations
    #> rails db:migrate && rails db:test:prepare

Install the initializer:

    #> rails g cmor:translations:install

## How to run the specs

    #> bundle
    #> cd spec/dummy && rake db:migrate RAILS_ENV=test && cd ../..
    #> rspec spec

## License

This project rocks and uses MIT-LICENSE.
