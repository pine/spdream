class Thesis < ActiveRecord::Base
  belongs_to :lab
  belongs_to :teacher
  belongs_to :faculty
  attr_accessible :author, :course, :enabled, :student_id, :title, :year, :file, :lab_id, :teacher_id, :faculty_id
  validates :title, :presence => true
  validates :author, :presence => true
  validates :student_id, :presence => true
  validates :year, :presence => true, :numericality => true
end
