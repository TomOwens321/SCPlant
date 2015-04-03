class Family < ActiveRecord::Base
  validates :name, presence: true
  has_many :plants

  def previous
   Family.where( "id < ?", self.id ).last ||Family.last
  end

  def next
   Family.where( "id > ?", self.id ).first ||Family.first
  end

end
