# frozen_string_literal: true

class CreateHits < ActiveRecord::Migration[5.0]
  def change
    create_table :hits do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end
