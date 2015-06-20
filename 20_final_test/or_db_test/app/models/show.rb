class Show < ActiveRecord::Base
  belongs_to :network
  has_many :clients, through: :airings
end
