class Category < ActiveRecord::Base
  belongs_to :parent
  attr_accessible :description, :level, :name, :priority
end
