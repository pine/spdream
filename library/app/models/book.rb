class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :child_category
  attr_accessible :auther, :deleted, :isbn10, :isbn13, :opac_id, :outline, :photo, :tag0, :tag1, :tag2, :tag3, :tag4, :tag5, :tag6, :tag7, :title, :value, :category_id, :child_category_id
  has_attached_file :photo
  # attr_accessible :title, :body
end
