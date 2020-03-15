class CreatePollinators < ActiveRecord::Migration
  def change
    create_table :pollinators do |t|
      t.string :name
      t.references :family, index: true
      t.references :genus, index: true
      t.references :species, index: true
      t.string :common_name
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :pollinators, :families
    add_foreign_key :pollinators, :genus
    add_foreign_key :pollinators, :species
  end
end
