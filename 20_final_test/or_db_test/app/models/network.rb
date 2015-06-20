class Network < ActiveRecord::Base
  
  has_many :shows

  validates :netname, :uniqueness => true, :presence => true 

end
