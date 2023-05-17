$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'cmor/translations/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'cmor-translations'
  s.version     = ::Cmor::Translations::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/content-management-on-rails/cmor-translations"
  s.summary     = 'Cmor Translations Module.'
  s.description = 'Provides database storage and UI for I18n translations.'
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib,spec/factories}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  
  s.add_dependency "rails", ">= 5.2.0"
  s.add_dependency "cmor_core", ">= 0.0.5.pre"
  s.add_dependency 'i18n-active_record'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'git_log_generator'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rao-shoulda_matchers'
  s.add_development_dependency 'rails-dummy'
  s.add_development_dependency 'rails-i18n'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_bot_rails' # This has to be after rspec-rails
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-console'
  s.add_development_dependency 'sprockets-rails'
end
