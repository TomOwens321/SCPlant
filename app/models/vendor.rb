class Vendor < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, trhough: :seeds
end
