class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :comment, :date, :deleted, :enabled, :title, :value_bad, :value_book, :value_good
end
