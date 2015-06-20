class Client < ActiveRecord::Base
  has_many :airings
  has_many :shows, through: :airings

  validates :clientname, :uniqueness => true, :presence => true 
  
end
