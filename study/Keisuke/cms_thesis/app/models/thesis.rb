class Thesis < ActiveRecord::Base
  belongs_to :lab
  attr_accessible :author, :enabled, :student_id, :title, :year, :lab_id
end
