# coding: utf-8

class ReviewsController < ApplicationController
  layout 'cms_main'
  before_filter :authenticate_user!

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reviews }
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(params[:review])

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url }
      format.json { head :no_content }
    end
  end

   def hide_and_restore_and_approval
    @review = Review.find(params[:id])

    if @review.request == true then

      if @review.deleted == true then
        @review.deleted = false
      else
        @review.deleted = true
      end

      if @review.update_attributes(params[:review])
        if @review.deleted == false then
          redirect_to deleted_reviews_path, notice: '復元しました'
        else
          redirect_to reviews_path, notice: '削除しました'
        end
      else
        if @review.deleted == false then
          render action: 'index'
        else
          render action: 'deleted'
        end
      end
    else
      @review.request = true
      @review.enabled = true
      if @review.update_attributes(params[:review])
          redirect_to request_reviews_path, notice: '承認しました'
      end
    end
  end

  def deleted
    @reviews = Review.find(:all, :conditions => { :deleted => true })
  end

end
