require 'factory_bot_rails'

FactoryBot.tap do |f|
  f.factories.clear
  f.definition_file_paths = [
    Cmor::Translations::Engine.root.join(*%w(spec factories))
  ]
  f.find_definitions 
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
