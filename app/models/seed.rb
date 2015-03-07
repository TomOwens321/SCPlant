class Seed < ActiveRecord::Base
  belongs_to :plant
  belongs_to :vendor
  belongs_to :location

  def plant_name
    self.plant.nil? ? "" : self.plant.name
  end

  def vendor_name
    self.vendor.nil? ? "" : self.vendor.name
  end

  def location_name
    self.location.nil? ? "" : self.location.name
  end
end
