# coding: utf-8

class LabsController < ApplicationController
	layout 'cms_main'
  
	def index
		@labs = Lab.find(:all, :conditions => {:faculty_id => params[:id]})
	end

	def new
		@lab = Lab.new
	end

	def create
		@lab = Lab.new(params[:lab])
		if @lab.save
			redirect_to labs_path, notice: '登録しました'
		else
			render action: 'new'
		end
	end

	def edit
		@lab = Lab.find(params[:id])
	end

	def update
		@lab = Lab.find(params[:id])
		if @lab.update_attributes(params[:lab])
			redirect_to labs_path, notice: '更新しました'
		else
			render action: 'edit'
		end
	end

	def destroy
		@lab = Lab.find(params[:id])
		@lab.destroy
		redirect_to labs_path, notice: '削除しました'
	end
end
