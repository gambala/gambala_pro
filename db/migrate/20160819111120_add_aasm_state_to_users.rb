# frozen_string_literal: true

class AddAasmStateToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :aasm_state, :string
  end
end
