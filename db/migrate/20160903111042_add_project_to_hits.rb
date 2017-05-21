# frozen_string_literal: true

class AddProjectToHits < ActiveRecord::Migration[5.0]
  def change
    add_reference :hits, :project, foreign_key: true
  end
end
