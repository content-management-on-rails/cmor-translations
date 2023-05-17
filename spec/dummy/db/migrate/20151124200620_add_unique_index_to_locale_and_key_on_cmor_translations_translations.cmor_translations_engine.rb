# This migration comes from cmor_translations_engine (originally 2)
class AddUniqueIndexToLocaleAndKeyOnCmorTranslationsTranslations < ActiveRecord::Migration[4.2]
  def change
    add_index(:cmor_translations_translations, [:locale, :key], unique: true)
  end
end
