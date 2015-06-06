class Experience < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  validates_presence_of :skill_id, :user_id

end
