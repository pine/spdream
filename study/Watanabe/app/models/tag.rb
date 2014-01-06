class Tag < ActiveRecord::Base
  attr_accessible :enabled, :intro, :name, :priority

  	validates :name, :presence => true
end
