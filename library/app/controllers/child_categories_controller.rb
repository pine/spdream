class ChildCategoriesController < ApplicationController
  layout 'cms_main'
  before_filter :authenticate_user!
  
  # GET /child_categories
  # GET /child_categories.json
  def index
    @child_categories = ChildCategory.find(:all, :order => "priority")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_categories }
    end
  end

  # GET /child_categories/1
  # GET /child_categories/1.json
  def show
    @child_category = ChildCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_category }
    end
  end

  # GET /child_categories/new
  # GET /child_categories/new.json
  def new
    @child_category = ChildCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_category }
    end
  end

  # GET /child_categories/1/edit
  def edit
    @child_category = ChildCategory.find(params[:id])
  end

  # POST /child_categories
  # POST /child_categories.json
  def create
    @child_category = ChildCategory.new(params[:child_category])

    respond_to do |format|
      if @child_category.save
        format.html { redirect_to @child_category, notice: 'Child category was successfully created.' }
        format.json { render json: @child_category, status: :created, location: @child_category }
      else
        format.html { render action: "new" }
        format.json { render json: @child_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_categories/1
  # PUT /child_categories/1.json
  def update
    @child_category = ChildCategory.find(params[:id])

    respond_to do |format|
      if @child_category.update_attributes(params[:child_category])
        format.html { redirect_to @child_category, notice: 'Child category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_categories/1
  # DELETE /child_categories/1.json
  def destroy
    @child_category = ChildCategory.find(params[:id])
    @child_category.destroy

    respond_to do |format|
      format.html { redirect_to  :back}
      format.json { head :no_content }
    end
  end
end
