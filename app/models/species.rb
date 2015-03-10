class Species < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :plants
end
