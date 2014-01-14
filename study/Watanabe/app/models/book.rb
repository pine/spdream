class Book < ActiveRecord::Base
  attr_accessible :auther, :isbn, :opac_id, :outline, :title, :value

  has_many :comments

   validates :title, :presence => true
   validates :auther, :presence => true
   validates :isbn, :presence => true
   validates :isbn, :length => { :maximum => 13, :minimum => 10 }
   validates :opac_id, :presence => true
   validates :value, :presence => true
   validates :value, :numericality => { :greater_than => 0, :less_than => 6 }
end
