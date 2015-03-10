class Location < ActiveRecord::Base
  validates :name, presence: true
  has_many :seeds
  has_many :plants, through: :seeds
end
