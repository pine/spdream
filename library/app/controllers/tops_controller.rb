class TopsController < ApplicationController
    layout 'application'
	
	def index
		@tops = Schedule.all
        @books = Book.all
	end

	def index_event
		@events = Schedule.all
	end

    def index_news
    	@news = Schedule.all
    end

    def show_event
    	@events = Schedule.find(params[:id])
    end

    def show_news
    	@news = Schedule.find(params[:id])
    end

end

