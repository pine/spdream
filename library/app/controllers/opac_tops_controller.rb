class OpacTopsController < ApplicationController
    layout 'user_opacplus'
  before_filter :authenticate_user!
  
	def index
        @categories = Category.find(:all, :order => "priority")
	end

	def index_book
        @books = Book.find(params[:id])
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

