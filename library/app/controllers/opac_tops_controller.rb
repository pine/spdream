class OpacTopsController < ApplicationController
    layout 'application'
  
	def index
        @categories = Category.find(:all, :order => "priority")
	end

	def index_book
        @books = Book.find(:all, :conditions => { :category_id => params[:id]})
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(params[:id])
	end

    def index_tag
        @books = Book.find(params[:id])
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")    
    end

    def show_book
        @books = Book.find(params[:id])
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(params[:id])
    end

end

