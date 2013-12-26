class LinkGroupsController < ApplicationController
  # GET /link_groups
  # GET /link_groups.json
  def index
    @link_groups = LinkGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @link_groups }
    end
  end

  # GET /link_groups/1
  # GET /link_groups/1.json
  def show
    @link_group = LinkGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link_group }
    end
  end

  # GET /link_groups/new
  # GET /link_groups/new.json
  def new
    @link_group = LinkGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link_group }
    end
  end

  # GET /link_groups/1/edit
  def edit
    @link_group = LinkGroup.find(params[:id])
  end

  # POST /link_groups
  # POST /link_groups.json
  def create
    @link_group = LinkGroup.new(params[:link_group])

    respond_to do |format|
      if @link_group.save
        format.html { redirect_to @link_group, notice: 'Link group was successfully created.' }
        format.json { render json: @link_group, status: :created, location: @link_group }
      else
        format.html { render action: "new" }
        format.json { render json: @link_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /link_groups/1
  # PUT /link_groups/1.json
  def update
    @link_group = LinkGroup.find(params[:id])

    respond_to do |format|
      if @link_group.update_attributes(params[:link_group])
        format.html { redirect_to @link_group, notice: 'Link group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_groups/1
  # DELETE /link_groups/1.json
  def destroy
    @link_group = LinkGroup.find(params[:id])
    @link_group.destroy

    respond_to do |format|
      format.html { redirect_to link_groups_url }
      format.json { head :no_content }
    end
  end
end
