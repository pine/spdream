class ThesisTopsController < ApplicationController
    layout 'user_thesis'

	def index
        @faculties = Faculty.all
    end
    
end

