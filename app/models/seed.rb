class Seed < ActiveRecord::Base
  belongs_to :plant
  belongs_to :vendor
  belongs_to :location
end
