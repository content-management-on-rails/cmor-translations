$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem"s version:
require "cmor/translations/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "cmor-translations"
  spec.version     = ::Cmor::Translations::VERSION
  spec.authors     = ["Roberto Vasquez Angel"]
  spec.email       = ["roberto@vasquez-angel.de"]
  spec.homepage    = "https://github.com/content-management-on-rails/cmor-translations"
  spec.summary     = "Cmor Translations Module."
  spec.description = "Provides database storage and UI for I18n translationspec."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib,spec/factories}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2.0"
  spec.add_dependency "cmor-core", ">= 0.0.5.pre"
  spec.add_dependency "i18n-active_record"

  spec.add_development_dependency "bootsnap"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "factory_bot_rails" # This has to be after rspec-rails
  spec.add_development_dependency "git_log_generator"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "guard-rails"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-standardrb"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "rails-dummy"
  spec.add_development_dependency "rails-i18n"
  spec.add_development_dependency "rao-shoulda_matchers"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "shoulda-matchers"
  spec.add_development_dependency "sprockets-rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "standardrb"
end
