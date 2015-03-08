class Plant < ActiveRecord::Base
  #attr_accessible :family_name
  after_validation :set_other_params

  has_many   :seeds
  has_many   :locations, through: :seeds
  has_many   :vendors,   through: :seeds
  
  belongs_to :family
  belongs_to :genus
  belongs_to :species
  belongs_to :common_name

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
