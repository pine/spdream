class TopsController < ApplicationController

	def index
		@tops = Schedule.all
       
	end

	def index_event
		@events = Schedule.all
	end

    def index_news
    	@newss = Schedule.all
    end

    def show_event
    	@event = Schedule.find(params[:id])
    end

    def show_news
    	@news = Schedule.find(params[:id])
    end

end
