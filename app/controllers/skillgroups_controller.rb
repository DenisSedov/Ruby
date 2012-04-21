class SkillgroupsController < ApplicationController
  # GET /skillgroups
  # GET /skillgroups.json
  def index
    @skillgroups = Skillgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skillgroups }
    end
  end

  # GET /skillgroups/1
  # GET /skillgroups/1.json
  def show
    @skillgroup = Skillgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skillgroup }
    end
  end

  # GET /skillgroups/new
  # GET /skillgroups/new.json
  def new
    @skillgroup = Skillgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skillgroup }
    end
  end

  # GET /skillgroups/1/edit
  def edit
    @skillgroup = Skillgroup.find(params[:id])
  end

  # POST /skillgroups
  # POST /skillgroups.json
  def create
    @skillgroup = Skillgroup.new(params[:skillgroup])

    respond_to do |format|
      if @skillgroup.save
        format.html { redirect_to @skillgroup, notice: 'Skillgroup was successfully created.' }
        format.json { render json: @skillgroup, status: :created, location: @skillgroup }
      else
        format.html { render action: "new" }
        format.json { render json: @skillgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skillgroups/1
  # PUT /skillgroups/1.json
  def update
    @skillgroup = Skillgroup.find(params[:id])

    respond_to do |format|
      if @skillgroup.update_attributes(params[:skillgroup])
        format.html { redirect_to @skillgroup, notice: 'Skillgroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skillgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skillgroups/1
  # DELETE /skillgroups/1.json
  def destroy
    @skillgroup = Skillgroup.find(params[:id])
    @skillgroup.destroy

    respond_to do |format|
      format.html { redirect_to skillgroups_url }
      format.json { head :no_content }
    end
  end
end
