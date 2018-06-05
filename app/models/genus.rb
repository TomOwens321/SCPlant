class Genus < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :plants

  default_scope { order('name ASC') }
  
  def previous
   Genus.where( "name < ?", self.name ).last ||Genus.last
  end

  def next
   Genus.where( "name > ?", self.name ).first ||Genus.first
  end

end
