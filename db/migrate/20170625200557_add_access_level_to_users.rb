# frozen_string_literal: true

class AddAccessLevelToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :access_level, :string
    add_index :users, :access_level
  end
end
