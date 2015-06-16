class User < ActiveRecord::Base
  

  has_many :experiences
  has_many :skills, through: :experiences

  belongs_to :company #belongs to can be before or after has_many, doesn't matter.

  validates_presence_of :name, :company_id


  has_secure_password # AR method to activate bcrypt

  # column called password_digest, which is a string
  # $ rails g migration add_password_digest_to_users

end
