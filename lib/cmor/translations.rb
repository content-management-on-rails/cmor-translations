require 'cmor/translations/configuration'

module Cmor
  module Translations
    extend Configuration

    def self.table_name_prefix
      'cmor_translations_'
    end
  end
end
