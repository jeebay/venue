class NotNullFieldsInEventsBandsConcertHalls < ActiveRecord::Migration
  def change
    change_column_null :concert_halls, :name, false
    change_column_null :concert_halls, :city, false
    change_column_null :concert_halls, :state, false
    change_column_null :events, :date, :string, false
    change_column_null :bands, :name, :string, false
    change_column_null :bands, :genre, :string, false
  end
end
