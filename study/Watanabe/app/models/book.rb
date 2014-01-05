class Book < ActiveRecord::Base
  attr_accessible :auther, :isbn, :opac_id, :outline, :title, :value

   validates :title, :presence => true
   validates :auther, :presence => true
   validates :isbn, :presence => true
   validates :isbn, :length => { :maximum => 13 }
   validates :isbn, :length => { :minimum => 10 }
   validates :opac_id, :presence => true
   validates :value, :presence => true
   validates :value, inclusion: { in: 1..5 }
end
