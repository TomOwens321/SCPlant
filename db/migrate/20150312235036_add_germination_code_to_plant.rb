class AddGerminationCodeToPlant < ActiveRecord::Migration
  def change
    add_column :plants, :germination_code, :string
  end
end
