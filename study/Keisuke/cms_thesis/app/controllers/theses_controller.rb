# coding: utf-8

class ThesesController < ApplicationController
	def index
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
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

	def destroy
		@thesis = Thesis.find(params[:id])
		@thesis.destroy
		redirect_to theses_path
	end

	def deleted
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
	end

end
