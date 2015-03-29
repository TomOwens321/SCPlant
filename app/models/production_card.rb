class ProductionCard < ActiveRecord::Base
  
  validates :plant_id, presence: true

  belongs_to :plant
  belongs_to :seed
  belongs_to :order

  has_many   :production_steps, dependent: :destroy

  after_initialize :defaults
  before_save       :decrement_seed

  def plant_name
    self.plant.nil? ? "" : self.plant.name
  end

  def seed_lot
    self.seed.nil? ? "" : self.seed.lot
  end

  def seed_lots
    self.plant.nil? ? [] : self.plant.seeds
  end

  def first_item_date
    item = self.production_steps.first
    item.nil? ? "" : item.step_date
  end


  def defaults
    myID = ProductionCard.maximum(:id).nil? ? 1 : ProductionCard.maximum(:id) + 1
    self.card_number ||= "SCP-%05d" % myID
  end

  def decrement_seed
    return if self.seed_decremented
    return if self.seed.nil? || self.seed_quantity.nil? || self.seed_quantity < 1
    seed = self.seed
    seed.remaining -= self.seed_quantity
    seed.save
    self.seed_decremented = true
  end
end
