class Seed < ActiveRecord::Base
  belongs_to :plant
  belongs_to :vendor
  belongs_to :location

  def plant_name
    self.plant.nil? ? "" : self.plant.name
  end
end
