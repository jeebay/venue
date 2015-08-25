class AddFkeysToEvent < ActiveRecord::Migration
  def change
    add_column :events, :band_id, :integer, required: true
    add_column :events, :concert_hall_id, :integer, required: true
    add_foreign_key :events, :bands
    add_foreign_key :events, :concert_halls
  end
end
