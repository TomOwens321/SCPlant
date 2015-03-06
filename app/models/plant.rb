class Plant < ActiveRecord::Base
  #attr_accessible :family_name
  after_validation :set_other_params

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

  private

  def set_other_params
    gs = self.name.split(" ")
    if self.genus.nil?
      genus = Genus.where(name: gs[0]).first_or_create
      #genus.name = gs[0]
      self.genus = genus
      genus.save
    end
    if self.species.nil?
      species = Species.where(name: gs[1]).first_or_create
      #species.name = gs[1]
      self.species = species
      species.save
    end
  end

end
