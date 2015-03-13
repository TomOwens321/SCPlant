class CreateProductionCards < ActiveRecord::Migration
  def change
    create_table :production_cards do |t|
      t.string :card_number
      t.references :plant, index: true
      t.references :seed, index: true
      t.integer :seed_quantity
      t.integer :quantity_needed
      t.integer :quantity_produced
      t.references :order, index: true
      t.boolean :seed_decremented
      t.boolean :active

      t.timestamps null: false
    end
    add_foreign_key :production_cards, :plants
    add_foreign_key :production_cards, :seeds
    add_foreign_key :production_cards, :orders
  end
end
