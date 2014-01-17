class ThesisTopsController < ApplicationController
    layout 'user_thesis'

	def index
    	@books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")
	end

end

