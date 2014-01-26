class OpacTopsController < ApplicationController
    layout 'application'
  
	def index
        @categories = Category.find(:all, :order => "priority")
        @tags = Tag.find(:all, :order => "priority", :conditions => { :enabled => true, :request => true })
        @review_new = Review.new
        @book_new = Book.new
        @tag_new = Tag.new

        respond_to do |format|
            format.html
            format.json { render json: @review_new }
        end
	end
    
    def index_category
        @books = Book.find(:all, :conditions => {:category_id => params[:id] })
        @book_values = book_values(@books)
        @category = Category.find(params[:id])
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(params[:id])
    end

	def index_child_category
        @books = Book.find(:all, :conditions => { :child_category_id => params[:id]})
        @book_values = book_values(@books)
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
    @book_value = book_value(@books)
    @reviews = Review.find(:all, :conditions => { :book_id => params[:id], :request => true })
    @categories = Category.find(:all, :order => "priority")
    @child_categories = ChildCategory.find(params[:id])
    @review_new = Review.new
    @tags = Tag.find(:all, :conditions => { :request => true })
    @tag_new = Tag.new

    respond_to do |format|
        format.html
        format.json { render json: @review_new }
    end
  end
  
  # 新規タグ追加
  def create_tag
    @tag = Tag.new(params[:tag])
    
    respond_to do |format|
      if @tag.save
        format.json { render json: @tag, status: :created, location: @tag }
      else
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # タグ追加
  def add_tag
    @tag = Tag.find(params[:tag_id])
    @book = Book.find(params[:book_id])
    
    respond_to do |format|
      error = proc do
        format.json { render json: @tag, status: :unprocessable_entity }
      end
      
      tag_index = -1
      
      8.times do |i|
        if @book.send("tag#{i}") == nil or @book.send("tag#{i}").size == 0
          @book.send("tag#{i}=", @tag.name)
          tag_index = i
          break
        end
      end
      
      if tag_index >= 0
        if @book.save
          format.json { render json: { book: @book, tag: @tag, index: tag_index }, status: :created }
        else
          error.call
        end
      end
    end
  end
  
  # タグ削除
  def remove_tag
    tag_name = params[:name]
    @book = Book.find(params[:book_id])
    
    respond_to do |format|
      index = -1
      
      8.times do |i|
        if @book.send("tag#{i}") == tag_name
          @book.send("tag#{i}=", '')
          index = i
          break
        end
      end
      
      if index >= 0 and @book.save
        format.json { render json: { name: tag_name, index: index }, status: :created }
      else
        format.json { render json: tag_name, status: :unprocessable_entity }
      end
    end
  end
  
private
  def book_values(books)
    values = { }
    
    books.each do |book|
      values[book.id] = book_value(book)
    end
    
    values
  end
  
  def book_value(book)
    value = book.value
    
    book.reviews.each do |review|
      value += review.value_book
    end
    
    value / (book.reviews.size + 1)
  end
end

