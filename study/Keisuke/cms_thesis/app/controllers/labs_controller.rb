# coding: utf-8

class LabsController < ApplicationController
	def index
		@labs = Lab.all
	end

	def new
		@lab = Lab.new
	end

	def create
		@lab = Lab.new(params[:lab])
		if @lab.save
			redirect_to theses_path, notice: '登録しました'
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
			redirect_to theses_path, notice: '更新しました'
		else
			render action: 'edit'
		end
	end

	def destroy
		@lab = Lab.find(params[:id])
		@lab.destroy
		redirect_to labs_path
	end
end
