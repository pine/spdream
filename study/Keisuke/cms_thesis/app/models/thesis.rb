class Thesis < ActiveRecord::Base
  belongs_to :lab_id
  attr_accessible :author, :enabled, :student_id, :title, :year

  validates :title, :presence => true
  validates :author, :presence => true
  validates :student_id, :presence => true,
  						 :numericality => true
  validates :year, :presence => true,
  				   :numericality => true

end
