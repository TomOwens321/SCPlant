class ProductionCard < ActiveRecord::Base
  
  validates :plant_id, presence: true

  belongs_to :plant
  belongs_to :seed
  belongs_to :order

  after_initialize :defaults

  def plant_name
    self.plant.nil? ? "" : self.plant.name
  end

  def seed_lots
    self.plant.nil? ? [] : self.plant.seeds
  end

  def defaults
    myID = ProductionCard.maximum(:id).nil? ? 1 : ProductionCard.maximum(:id) + 1
    self.card_number ||= "SCP-%05d" % myID
  end
end
