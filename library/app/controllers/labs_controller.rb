# coding: utf-8

class LabsController < ApplicationController
	layout 'cms_main'
  before_filter :authenticate_user!
  
	def index
		@faculties = Faculty.all
		@labs = Lab.all
	end

	def new
		@lab = Lab.new
	end

	def create
		@lab = Lab.new(params[:lab])
		if @lab.save
			flash[:notice] = '作成しました'
			redirect_to :controller => 'labs', :action => 'index', :id => @lab.faculty_id
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
			flash[:notice] = '更新しました'
			redirect_to :controller => 'labs', :action => 'index', :id => @lab.faculty_id
		else
			render action: 'edit'
		end
	end

	def destroy
		@lab = Lab.find(params[:id])
		@lab.destroy
		flash[:notice] = '削除しました'
		redirect_to :controller => 'labs', :action => 'index', :id => @lab.faculty_id
	end
end
