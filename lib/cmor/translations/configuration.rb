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
