require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Cmor
  module Translations
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :prefer_database_translations do
        true
      end
    end
  end
end
