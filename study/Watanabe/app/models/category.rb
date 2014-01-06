class Category < ActiveRecord::Base
  belongs_to :parent
  attr_accessible :description, :level, :name, :priority

	validates :name, :presence => true
  	validates :level, :presence => true
  	validates :description, :presence => true
  	validates :priority, :presence => true

end
