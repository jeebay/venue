class CreateConcertHalls < ActiveRecord::Migration
  def change
    create_table :concert_halls do |t|
      t.string :name
      t.string :city
      t.string :state
      t.boolean :family_friendly

      t.timestamps null: false
    end
  end
end
