class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :child_category
  belongs_to :tag
  attr_accessible :auther, :isbn10, :isbn13, :opac_id, :outline, :title, :value, :category_id, :child_category_id, :tag_id
end

