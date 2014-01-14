class Tag < ActiveRecord::Base
  attr_accessible :enabled, :intro, :name, :priority

  	validates :name, :presence => true
  	validates :priority, :presence => true
    validates :priority, :numericality => {:greater_than => 0}

end
