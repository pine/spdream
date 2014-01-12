class Lab < ActiveRecord::Base
  belongs_to :faculty
  attr_accessible :name, :faculty_id
end
