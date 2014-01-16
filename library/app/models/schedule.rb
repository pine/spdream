class Schedule < ActiveRecord::Base
  attr_accessible :date,  :intro, :time, :title, :type, :photo, :name, :start_at, :end_at
  has_attached_file :photo
  # attr_accessible :title, :body
end
