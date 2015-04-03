class Genus < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :plants

  def previous
   Genus.where( "id < ?", self.id ).last ||Genus.last
  end

  def next
   Genus.where( "id > ?", self.id ).first ||Genus.first
  end

end
