class Faculty < ActiveRecord::Base
  has_many :lab
  attr_accessible :name
  validates :name, :presence => true
end
