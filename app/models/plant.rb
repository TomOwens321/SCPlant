class Plant < ActiveRecord::Base
  belongs_to :family
  belongs_to :genus
  belongs_to :species
  belongs_to :common_name
end
