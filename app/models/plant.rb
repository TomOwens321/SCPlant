class Plant < ActiveRecord::Base
  #attr_accessible :family_name

  belongs_to :family
  belongs_to :genus
  belongs_to :species
  belongs_to :common_name

  accepts_nested_attributes_for :family, allow_destroy: false

  def family_name
    self.family.nil? ? "" : self.family.name
  end

end
