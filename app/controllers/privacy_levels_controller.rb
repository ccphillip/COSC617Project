class PrivacyLevelsController < ApplicationController
  # GET /privacy_levels
  # GET /privacy_levels.json
  def index
    @privacy_levels = PrivacyLevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @privacy_levels }
    end
  end

  # GET /privacy_levels/1
  # GET /privacy_levels/1.json
  def show
    @privacy_level = PrivacyLevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @privacy_level }
    end
  end

  # GET /privacy_levels/new
  # GET /privacy_levels/new.json
  def new
    @privacy_level = PrivacyLevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @privacy_level }
    end
  end

  # GET /privacy_levels/1/edit
  def edit
    @privacy_level = PrivacyLevel.find(params[:id])
  end

  # POST /privacy_levels
  # POST /privacy_levels.json
  def create
    @privacy_level = PrivacyLevel.new(params[:privacy_level])

    respond_to do |format|
      if @privacy_level.save
        format.html { redirect_to @privacy_level, notice: 'Privacy level was successfully created.' }
        format.json { render json: @privacy_level, status: :created, location: @privacy_level }
      else
        format.html { render action: "new" }
        format.json { render json: @privacy_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /privacy_levels/1
  # PUT /privacy_levels/1.json
  def update
    @privacy_level = PrivacyLevel.find(params[:id])

    respond_to do |format|
      if @privacy_level.update_attributes(params[:privacy_level])
        format.html { redirect_to @privacy_level, notice: 'Privacy level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @privacy_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /privacy_levels/1
  # DELETE /privacy_levels/1.json
  def destroy
    @privacy_level = PrivacyLevel.find(params[:id])
    @privacy_level.destroy

    respond_to do |format|
      format.html { redirect_to privacy_levels_url }
      format.json { head :no_content }
    end
  end
end
