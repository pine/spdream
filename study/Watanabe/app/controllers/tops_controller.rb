class TopsController < ApplicationController
    layout 'user_opacplus'

	def index
    	@books = Book.all
        @categories = Category.find(:all, :order => "priority")
        @child_categories = ChildCategory.find(:all, :order => "priority")

        # @categorie_id = Category.find(params[:id])
	end

	def index_book
	
	end

    def index_tag
    
    end

    def show_book
    
    end

end

