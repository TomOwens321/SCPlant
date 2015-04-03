class Vendor < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, through: :seeds

  def previous
   Vendor.where( "id < ?", self.id ).last ||Vendor.last
  end

  def next
   Vendor.where( "id > ?", self.id ).first ||Vendor.first
  end

end
