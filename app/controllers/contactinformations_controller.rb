class ContactinformationsController < ApplicationController
  # GET /contactinformations
  # GET /contactinformations.json
  def index
    @contactinformations = Contactinformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contactinformations }
    end
  end

  # GET /contactinformations/1
  # GET /contactinformations/1.json
  def show
    @contactinformation = Contactinformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contactinformation }
    end
  end

  # GET /contactinformations/new
  # GET /contactinformations/new.json
  def new
    @contactinformation = Contactinformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contactinformation }
    end
  end

  # GET /contactinformations/1/edit
  def edit
    @contactinformation = Contactinformation.find(params[:id])
  end

  # POST /contactinformations
  # POST /contactinformations.json
  def create
    @contactinformation = Contactinformation.new(params[:contactinformation])

    respond_to do |format|
      if @contactinformation.save
        format.html { redirect_to @contactinformation, notice: 'Contactinformation was successfully created.' }
        format.json { render json: @contactinformation, status: :created, location: @contactinformation }
      else
        format.html { render action: "new" }
        format.json { render json: @contactinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contactinformations/1
  # PUT /contactinformations/1.json
  def update
    @contactinformation = Contactinformation.find(params[:id])

    respond_to do |format|
      if @contactinformation.update_attributes(params[:contactinformation])
        format.html { redirect_to @contactinformation, notice: 'Contactinformation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contactinformation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactinformations/1
  # DELETE /contactinformations/1.json
  def destroy
    @contactinformation = Contactinformation.find(params[:id])
    @contactinformation.destroy

    respond_to do |format|
      format.html { redirect_to contactinformations_url }
      format.json { head :no_content }
    end
  end
end
