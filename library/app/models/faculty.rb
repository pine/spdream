class Faculty < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
end
