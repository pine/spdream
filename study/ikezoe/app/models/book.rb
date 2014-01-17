class Book < ActiveRecord::Base
	attr_accessible :title, :auther, :outline, :isbn, :opac_id, :value
end
