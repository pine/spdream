class Thesis < ActiveRecord::Base
  belongs_to :lab
  belongs_to :teacher
  belongs_to :faculty
  attr_accessible :author, :course, :enabled, :student_id, :title, :year, :lab_id, :teacher_id, :faculty_id
end
