class User < ActiveRecord::Base

  validates_presence_of :name, :email

  has_secure_password # AR method to activate bcrypt

end
