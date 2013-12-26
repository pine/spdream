class Event < ActiveRecord::Base
  attr_accessible :date, :end_date, :end_time, :intro, :time, :title, :type
end
