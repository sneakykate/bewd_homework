class Book < ActiveRecord::Base
   validates_presence_of :title
    belongs_to :author
end
