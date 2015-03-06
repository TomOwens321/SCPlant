class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.references :family, index: true
      t.references :genus, index: true
      t.references :species, index: true
      t.references :common_name, index: true
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :plants, :families
    add_foreign_key :plants, :genus
    add_foreign_key :plants, :species
    add_foreign_key :plants, :common_names
  end
end
