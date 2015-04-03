class Location < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, through: :seeds

  default_scope { order('name ASC') }
  
  def previous
   Location.where( "name < ?", self.name ).last ||Location.last
  end

  def next
   Location.where( "name > ?", self.name ).first ||Location.first
  end

end
