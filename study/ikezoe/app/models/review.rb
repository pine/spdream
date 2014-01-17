class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :title, :book_id, :comment, :value_good, :value_bad, :value_book, :enabled, :date, :deleted
end