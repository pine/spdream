class OpacTopsController < ApplicationController
    layout 'application'
  
	def index
        @categories = Category.find(:all, :order => "priority")
        @tags = Tag.find(:all, :order => "priority")
        @review_new = Review.new
        @book_new = Book.new
        @tag_new = Tag.new

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
    @tag_name = params[:name]
    conditions_query = ''
    conditions_params = []
    
    8.times do |i|
      conditions_query += ' or ' unless i.zero?
      conditions_query += "tag#{i} = ?"
      conditions_params << @tag_name
    end
    
    @categories = Category.find(:all, :order => "priority")
    @books = Book.find(:all, :conditions => [conditions_query].concat(conditions_params))
  end
  
  def index_tags
    @categories = Category.find(:all, :order => "priority")
    @tags = Tag.all
  end
  
  def show_book
    @books = Book.find(params[:id])
    @reviews = Review.find(:all, :conditions => {:book_id => params[:id]})
    @categories = Category.find(:all, :order => "priority")
    @child_categories = ChildCategory.find(params[:id])
    @review_new = Review.new
    @tags = Tag.all
    @tag_new = Tag.new

    respond_to do |format|
        format.html
        format.json { render json: @review_new }
    end
  end
end

