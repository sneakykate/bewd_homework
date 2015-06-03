class Author < ActiveRecord::Base

  validates_presence_of :name
  has_many :books
  def authorname
    "#{name}"
  end
end
