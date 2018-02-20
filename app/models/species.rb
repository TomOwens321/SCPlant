class Species < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :plants

  default_scope { order('name ASC') }

  def previous
   Species.where( "name < ?", self.name ).last ||Species.last
  end

  def next
   Species.where( "name > ?", self.name ).first ||Species.first
  end

end
