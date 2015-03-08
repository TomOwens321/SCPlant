class Location < ActiveRecord::Base
  has_many :seeds
  has_many :plants, through: :seeds
end
