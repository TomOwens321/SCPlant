class AddNotesToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :notes, :string
  end
end
