class Seed < ActiveRecord::Base
  belongs_to :plant
  belongs_to :vendor
  belongs_to :location

  after_initialize :defaults

  def plant_name
    self.plant.nil? ? "" : self.plant.name
  end

  def vendor_name
    self.vendor.nil? ? "" : self.vendor.name
  end

  def location_name
    self.location.nil? ? "" : self.location.name
  end

  def defaults
    myID = Seed.maximum(:id).nil? ? 1 : Seed.maximum(:id) + 1
    self.lot ||= "SCS-%04d" % myID
  end
end