class CreateProductionSteps < ActiveRecord::Migration
  def change
    create_table :production_steps do |t|
      t.references :production_card, index: true
      t.date :step_date
      t.string :process
      t.string :description
      t.text :notes

      t.timestamps null: false
    end
    add_foreign_key :production_steps, :production_cards
  end
end
