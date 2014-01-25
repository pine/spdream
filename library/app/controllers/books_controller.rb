# coding: utf-8

class BooksController < ApplicationController
  layout 'cms_main'
  before_filter :authenticate_user!
  
  # GET /books
  # GET /books.json
  def index
    @books = Book.find(:all, :conditions => { :deleted => false })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])
    

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
 def hide_and_restore_and_approval
    @book = Book.find(params[:id])

    if @book.request == true then

      if @book.deleted == true then
        @book.deleted = false
      else
        @book.deleted = true
      end

      if @book.update_attributes(params[:book])
        if @book.deleted == false then
          redirect_to deleted_books_path, notice: '復元しました'
        else
          redirect_to books_path, notice: '削除しました'
        end
      else
        if @book.deleted == false then
          render action: 'index'
        else
          render action: 'deleted'
        end
      end
    else
      @book.request = true

      if @book.update_attributes(params[:review])
          redirect_to request_books_path, notice: '承認しました'
      end
    end
  end

  def deleted
    @books = Book.find(:all, :conditions => { :deleted => true })
  end


end
