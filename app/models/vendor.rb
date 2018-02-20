class Vendor < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, through: :seeds

  default_scope { order('name ASC') }

  def previous
   Vendor.where( "name < ?", self.name ).last ||Vendor.last
  end

  def next
   Vendor.where( "name > ?", self.name ).first ||Vendor.first
  end

end
