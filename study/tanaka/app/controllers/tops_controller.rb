class TopsController < ApplicationController
	def index
		@tops = Schedule.all
	end
end
