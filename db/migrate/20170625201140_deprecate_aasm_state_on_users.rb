# frozen_string_literal: true

class DeprecateAasmStateOnUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :aasm_state, :string,
                  comment: 'Deprecated 25.06.2017. Use access_level enum field instead.'
  end
end
