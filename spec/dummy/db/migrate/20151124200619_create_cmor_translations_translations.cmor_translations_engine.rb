# This migration comes from cmor_translations_engine (originally 1)
class CreateCmorTranslationsTranslations < ActiveRecord::Migration[4.2]
  def change
    create_table :cmor_translations_translations do |t|
      t.string :locale
      t.string :key
      t.text :value
      t.text :interpolations
      t.boolean :is_proc, default: false

      t.timestamps
    end
  end
end
