class Family < ActiveRecord::Base
  validates :name, presence: true
  has_many :plants
  
  default_scope { order('name ASC') }
  
  def previous
   Family.where( "name < ?", self.name ).last ||Family.last
  end

  def next
   Family.where( "name > ?", self.name ).first ||Family.first
  end

end
