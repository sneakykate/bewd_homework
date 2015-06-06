class Skill < ActiveRecord::Base
  has_many :experiences
  has_many :users, through: :experiences

  validates_presence_of :skill_name

end
