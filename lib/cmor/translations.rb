require "active_support/core_ext/module/delegation"
require "active_support/core_ext/module/attribute_accessors"
require "cmor-core"

require "cmor/translations/configuration"
require "cmor/translations/engine"

module Cmor
  module Translations
    extend Configuration

    def self.table_name_prefix
      "cmor_translations_"
    end
  end
end
