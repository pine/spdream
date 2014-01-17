class OpacTopsController < ApplicationController
    layout 'user_opacplus'

	def index
    	@books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")
	end

	def index_book
        @books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")
	end

    def index_tag
        @books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")    
    end

    def show_book
        @books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")    
    end

end

