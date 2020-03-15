class CreatePlantsPollinators < ActiveRecord::Migration
  def change
    create_table :plants_pollinators, id: false do |t|
      t.belongs_to :plant
      t.belongs_to :pollinator
    end
  end
end
