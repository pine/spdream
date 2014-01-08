class Lab < ActiveRecord::Base
  has_many :Theses
  attr_accessible :name
end
