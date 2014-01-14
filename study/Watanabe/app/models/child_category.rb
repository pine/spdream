class ChildCategory < ActiveRecord::Base
  belongs_to :category
  attr_accessible :description, :name, :priority, :category_id
end
