class Airing < ActiveRecord::Base

  belongs_to :client
  belongs_to :show

  validates_presence_of :client_id, :show_id, :gross_cost, :net_cost, :airdate

end
