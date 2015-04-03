class Species < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :plants

  def previous
   Species.where( "id < ?", self.id ).last ||Species.last
  end

  def next
   Species.where( "id > ?", self.id ).first ||Species.first
  end

end
