class CreateI18nLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :i18n_languages, id: false, primary_key: :locale do |t|
      t.string :locale, index: { unique: true }, null: false
      t.string :title
      t.boolean :is_active, default: false, null: false
      t.integer :position
      t.string :flag_code
      t.string :title_localized

      t.timestamps
    end
  end
end
