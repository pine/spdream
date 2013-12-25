class Book < ActiveRecord::Base
  attr_accessible :isbn10, :isbn13, :materialid, :outline, :title, :value
end
