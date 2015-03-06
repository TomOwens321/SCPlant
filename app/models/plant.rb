class Plant < ActiveRecord::Base
  #attr_accessible :family_name

  belongs_to :family
  belongs_to :genus
  belongs_to :species
  belongs_to :common_name

  def family_name( new_name = "" )
    self.family.nil? ? "" : self.family.name
    #name = Family.where(name: :family_name).first_or_create!.name
  end

end
