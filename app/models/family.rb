class Family < ActiveRecord::Base
  validates :name, presence: true
  has_many :plants
end
