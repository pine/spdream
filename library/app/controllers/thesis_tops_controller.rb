class ThesisTopsController < ApplicationController
    layout 'application'
    
	def index
        @faculties = Faculty.all
        @labs = Lab.all
    end

	def all
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
    @thesis_sizes = thesis_sizes(@theses)
		@faculties = Faculty.all
	end

	def faculty
		@theses = Thesis.find(:all, :conditions => {:faculty_id => params[:id]}, :order => "year DESC, student_id ASC")
    @thesis_sizes = thesis_sizes(@theses)
		@labs = Lab.find(:all, :conditions => {:faculty_id => params[:id]})
		@faculty = Faculty.find(params[:id])
	end

	def lab
		@theses = Thesis.find(:all, :conditions => {:faculty_id => params[:faculty_id], :lab_id => params[:lab_id]}, :order => "year DESC, student_id ASC")
		@thesis_sizes = thesis_sizes(@theses)
		@lab = Lab.find(params[:lab_id])
		@labs = Lab.find(:all, :conditions => {:faculty_id => params[:faculty_id]})
		@faculty = Faculty.find(params[:faculty_id])
	end

	def download
   		@filepath = thesis_path(params[:student_id])
    	send_file @filepath, :disposition => 'inline'
	end  
    
private
  
  def thesis_path(student_id)
    file = student_id + '.pdf'
   	filepath = Rails.root + 'public/docs' + file
  end
  
  def thesis_sizes(theses)
    sizes = { }
    
    theses.each do |thesis|
      path = thesis_path(thesis.student_id)
      size = FileTest.size(path)
      sizes[thesis.id] = size
    end
    
    sizes
  end
end