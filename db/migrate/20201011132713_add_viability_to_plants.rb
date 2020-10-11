class AddViabilityToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :viability, :string
  end
end
