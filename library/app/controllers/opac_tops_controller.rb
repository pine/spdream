class OpacTopsController < ApplicationController
    layout 'application'
  
	def index
        @categories = Category.find(:all, :order => "priority")
        @tags = Tag.find(:all, :order => "priority")
        @review_new = Review.new

        respond_to do |format|
            format.html
            format.json { render json: @review_new }
        end
	end
    
    def index_category
        @books = Book.find(:all, :conditions => {:category_id => params[:category_id]})
        @category = Category.find(params[:id])
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(params[:id])
    end

	def index_child_category
        @books = Book.find(:all, :conditions => {:category_id => params[:category_id], :child_category_id => params[:child_category_id]})
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
        @reviews = Review.find(:all, :conditions => {:book_id => params[:id]})
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(params[:id])
        @review_new = Review.new

        respond_to do |format|
            format.html
            format.json { render json: @review_new }
        end
    end

end

