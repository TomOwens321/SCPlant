class Location < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, through: :seeds

  def previous
   Location.where( "id < ?", self.id ).last ||Location.last
  end

  def next
   Location.where( "id > ?", self.id ).first ||Location.first
  end

end
