class BookPagesController < ApplicationController

	def index
		@book_pages = Book.all
	end

	def show
		@book_page = Book.find(params[:id])
	end

	def new
		@book_page = Book.new
	end

end
