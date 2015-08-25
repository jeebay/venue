class RequireFieldsInEventsBandsConcertHalls < ActiveRecord::Migration
  def change
    change_column :concert_halls, :name, :string, required: true
    change_column :concert_halls, :city, :string, required: true
    change_column :concert_halls, :state, :string, required: true
    change_column :events, :date, :string, required: true
    change_column :bands, :name, :string, required: true
    change_column :bands, :genre, :string, required: true
  end
end
