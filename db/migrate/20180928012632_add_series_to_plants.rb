class AddSeriesToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :series, :string
  end
end
