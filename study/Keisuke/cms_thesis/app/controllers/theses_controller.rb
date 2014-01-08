# coding: utf-8

class ThesesController < ApplicationController
	def index
		@theses = Thesis.all(:order => "year DESC, student_id ASC")
		@labs = Lab.all
	end

	def lab
		@theses = Thesis.find(:all, :conditions => {:lab_id => params[:id]})
		@lab = Lab.find(params[:id])
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

end
