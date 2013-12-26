class Link < ActiveRecord::Base
  belongs_to :link_group_id
  attr_accessible :intro, :priority, :title, :url
end
