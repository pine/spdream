class TopsController < ApplicationController

	def index
		@tops = Schedule.all
	end

	def index_event
		@event = Schedule.all
	end

    def index_news
    	@news = Schedule.all
    end

    def show_event
    	@event = Schedule.find(params[:id])
    end

    def show_news
    	@news = Schedule.find(params[:id])
    end

end

