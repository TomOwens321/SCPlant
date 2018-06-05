class Plant < ActiveRecord::Base
  validates :name, presence: true
  validates :genus_id, presence: true
  validates :species_id, presence: true

  before_validation :set_other_params

  has_many   :seeds
  has_many   :locations, through: :seeds
  has_many   :vendors,   through: :seeds
  has_many   :production_cards
  
  belongs_to :family
  belongs_to :genus
  belongs_to :species

  default_scope { order('name ASC') }

  def long_name
    "#{self.name} | #{self.common_name}"
  end

  def family_name
    self.family.nil? ? "" : self.family.name
  end

  def genus_name
    self.genus.nil? ? "" : self.genus.name
  end

  def species_name
    self.species.nil? ? "" : self.species.name
  end

  def seeds_on_hand
    self.seeds.sum(:remaining)
  end

  def previous
    Plant.where( "name < ?", self.name ).last || Plant.last
  end

  def next
    Plant.where( "name > ?", self.name ).first || Plant.first
  end

  def usda_link
    symbol = (self.genus.name + "+" + self.species.name)
    link = "http://plants.usda.gov/java/nameSearch?keywordquery=#{symbol}&mode=sciname"
  end

  private

  def set_other_params
    gs = self.name.split(" ")
    if self.genus.nil?
      unless gs[0].nil?
        genus = Genus.where(name: gs[0]).first_or_create
        self.genus = genus
        genus.save
      end
    end
    if self.species.nil?
      unless gs[1].nil?
        species = Species.where(name: gs[1]).first_or_create
        self.species = species
        species.save
      end
    end
  end

end
