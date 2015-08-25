class NotNullBandsEvents < ActiveRecord::Migration
  def change
    change_column_null :events, :date, false
    change_column_null :events, :band_id, false
    change_column_null :events, :concert_hall_id, false
    change_column_null :bands, :name, false
    change_column_null :bands, :genre, false
  end
end
