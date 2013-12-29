class Config1sController < ApplicationController
  # GET /config1s
  # GET /config1s.json
  def index
    @config1s = Config1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @config1s }
    end
  end

  # GET /config1s/1
  # GET /config1s/1.json
  def show
    @config1 = Config1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @config1 }
    end
  end

  # GET /config1s/new
  # GET /config1s/new.json
  def new
    @config1 = Config1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @config1 }
    end
  end

  # GET /config1s/1/edit
  def edit
    @config1 = Config1.find(params[:id])
  end

  # POST /config1s
  # POST /config1s.json
  def create
    @config1 = Config1.new(params[:config1])

    respond_to do |format|
      if @config1.save
        format.html { redirect_to @config1, notice: 'Config1 was successfully created.' }
        format.json { render json: @config1, status: :created, location: @config1 }
      else
        format.html { render action: "new" }
        format.json { render json: @config1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /config1s/1
  # PUT /config1s/1.json
  def update
    @config1 = Config1.find(params[:id])

    respond_to do |format|
      if @config1.update_attributes(params[:config1])
        format.html { redirect_to @config1, notice: 'Config1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @config1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /config1s/1
  # DELETE /config1s/1.json
  def destroy
    @config1 = Config1.find(params[:id])
    @config1.destroy

    respond_to do |format|
      format.html { redirect_to config1s_url }
      format.json { head :no_content }
    end
  end
end
