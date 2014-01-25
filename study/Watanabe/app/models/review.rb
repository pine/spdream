class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :comment, :deleted, :enabled, :request, :title, :value_bad, :value_book, :value_good, :book_id
end
