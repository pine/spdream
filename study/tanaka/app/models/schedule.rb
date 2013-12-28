class Schedule < ActiveRecord::Base
  attr_accessible :date, :end_date, :end_time, :intro, :time, :title, :type, :photo
  has_attached_file :photo
  # attr_accessible :title, :body
end
