class Book < ActiveRecord::Base
  attr_accessible :isbn10, :isbn13, :opac_id, :title, :value
end
