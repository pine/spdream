class ThesisTopsController < ApplicationController
    layout 'user_thesis'
    
	def index
        @faculties = Faculty.all
    end

	def all
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
		@faculties = Faculty.all
	end

	def faculty
		@theses = Thesis.find(:all, :conditions => {:faculty_id => params[:id]}, :order => "year DESC, student_id ASC")
		@labs = Lab.find(:all, :conditions => {:faculty_id => params[:id]})
		@faculty = Faculty.find(params[:id])
	end

	def lab
		@theses = Thesis.find(:all, :conditions => {:faculty_id => params[:faculty_id], :lab_id => params[:lab_id]}, :order => "year DESC, student_id ASC")
		@lab = Lab.find(params[:lab_id])
		@faculty = Faculty.find(params[:faculty_id])
	end

	def download
   		@filepath = Rails.root + 'public/nuko.jpg'
    	send_file(@filepath)
	end  

end