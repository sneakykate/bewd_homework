class Client < ActiveRecord::Base

  mount_uploader :logourl, LogoUploader

  has_many :airings
  has_many :shows, through: :airings

  validates :clientname, :uniqueness => true, :presence => true 
  
end
