ActiveSupport.on_load(:active_record) do
  require 'i18n/backend/active_record'

  class I18n::Backend::ActiveRecord::Translation
    self.table_name = 'cmor_translations_translations'
  end

  print "[Cmor::Translations] Adding I18n::Backend::ActiveRecord to the I18n::Backend::Chain"
  begin
    if I18n::Backend::ActiveRecord::Translation.table_exists?
      backends = [I18n::Backend::ActiveRecord.new, I18n.backend]

      I18n::Backend::ActiveRecord.send(:include, I18n::Backend::Memoize)
      I18n::Backend::ActiveRecord.send(:include, I18n::Backend::Flatten)

      if Cmor::Translations::Configuration.prefer_database_translations
        I18n.backend = I18n::Backend::Chain.new(*backends)
      else
        I18n.backend = I18n::Backend::Chain.new(*backends.reverse)
      end
    end
  rescue ActiveRecord::NoDatabaseError, PG::ConnectionBad
    puts " => [WARNING] Could not add I18n::Backend::ActiveRecord to the I18n::Backend::Chain: #{e.message}"
  else
    puts " => [OK]"
  end
end
