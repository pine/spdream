# coding: utf-8

class FacultiesController < ApplicationController
	layout 'cms_main'
  before_filter :authenticate_user!
  
	def index
		@faculties = Faculty.all
	end

	def new
		@faculty = Faculty.new
	end

	def create
		@faculty = Faculty.new(params[:faculty])
		if @faculty.save
			redirect_to faculties_path, notice: '登録しました'
		else
			render action: 'new'
		end
	end

	def edit
		@faculty = Faculty.find(params[:id])
	end

	def update
		@faculty = Faculty.find(params[:id])
		if @faculty.update_attributes(params[:faculty])
			redirect_to faculties_path, notice: '更新しました'
		else
			render action: 'edit'
		end
	end

	def destroy
		@faculty = Faculty.find(params[:id])
		@faculty.destroy
		redirect_to faculties_path, notice: '削除しました'
	end
end
