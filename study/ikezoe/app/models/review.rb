class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :review, :book_id
end