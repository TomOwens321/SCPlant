class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :area
      t.string :city
      t.string :county
      t.string :state
      t.float :lattitude
      t.float :longitude
      t.integer :altitude
      t.text :notes

      t.timestamps null: false
    end
  end
end
