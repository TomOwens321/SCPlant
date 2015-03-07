class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :lot
      t.references :plant, index: true
      t.date :collection_date
      t.references :vendor, index: true
      t.references :location, index: true
      t.string :collected_by
      t.boolean :clean
      t.integer :quantity
      t.integer :remaining
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :seeds, :plants
    add_foreign_key :seeds, :vendors
    add_foreign_key :seeds, :locations
  end
end
