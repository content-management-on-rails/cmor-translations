# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :cmor_translations_translation, class: Cmor::Translations::Translation do
    locale { 'de' }
    sequence(:key) { |i| "translation.#{i}" }
  end
end
