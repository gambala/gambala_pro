class AddHappenedAtToHits < ActiveRecord::Migration[5.0]
  def change
    add_column :hits, :happened_at, :datetime, null: false, default: Time.zone.now
  end
end
