# coding: utf-8

class ThesesController < ApplicationController
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

	def new
		@thesis = Thesis.new
	end

	def create
		@thesis = Thesis.new(params[:thesis])
		@thesis.enabled = true
		if @thesis.save
			redirect_to theses_path, notice: '登録しました'
		else
			render action: 'new'
		end
	end

	def edit
		@thesis = Thesis.find(params[:id])
	end

	def update
		@thesis = Thesis.find(params[:id])
		if @thesis.update_attributes(params[:thesis])
			redirect_to theses_path, notice: '更新しました'
		else
			render action: 'edit'
		end
	end

	def hide_and_restore
		@thesis = Thesis.find(params[:id])

		if @thesis.enabled == true then
			@thesis.enabled = false
		else
			@thesis.enabled = true
		end

		if @thesis.update_attributes(params[:thesis])
			if @thesis.enabled == false then
				redirect_to theses_path, notice: '削除しました'
			else
				redirect_to deleted_theses_path, notice: '復元しました'
			end
		else
			if @thesis.enabled == false then
				render action: 'index'
			else
				render action: 'deleted'
			end
		end
	end

	def destroy
		@thesis = Thesis.find(params[:id])
		@thesis.destroy
		redirect_to deleted_theses_path
	end

	def deleted
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
	end

	def download
   		@filepath = Rails.root + 'public/nuko.jpg'
    	send_file(@filepath)
	end
end
