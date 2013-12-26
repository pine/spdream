class ThesesController < ApplicationController

	def index
		@theses = Thesis.all
	end
	
	def new
		@thesis = Thesis.new
	end

end
