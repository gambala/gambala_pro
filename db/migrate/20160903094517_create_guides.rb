class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end
