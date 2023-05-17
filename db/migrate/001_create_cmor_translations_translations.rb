class CreateCmorTranslationsTranslations < ActiveRecord::Migration[4.2]
  def change
    create_table :cmor_translations_translations do |t|
      t.string :locale
      t.string :key
      t.text :value
      t.text :interpolations
      t.boolean :is_proc, default: false

      t.timestamps

      t.index([:locale, :key], unique: true)
    end
  end
end
