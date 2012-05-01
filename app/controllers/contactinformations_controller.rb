class ContactinformationsController < ApplicationController

  def index
    @contactinformations = Contactinformation.all

    respond_to do |format|
      format.html 
      format.json { render json: @contactinformations }
    end
  end

  def show
    @contactinformation = Contactinformation.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @contactinformation }
    end
  end


  def new
    @contactinformation = Contactinformation.new

    respond_to do |format|
      format.html 
      format.json { render json: @contactinformation }
    end
  end

  def edit
    @contactinformation = Contactinformation.find(params[:id])
  end

  def create
    @contactinformation = Contactinformation.new(params[:contactinformation])    
    #@vacancy = Vacancy.find(params[:contactinformation_id])      
    #@contactinformation = @vacancy.contactinformations.create(params[:contactinfo])  
    

    #@contactinformation = @vacancy.contactinformations.create(params[:contactinformation])
    #redirect_tog post_path(@vacancy)

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

  def destroy
    @contactinformation = Contactinformation.find(params[:id])
    @contactinformation.destroy

    respond_to do |format|
      format.html { redirect_to contactinformations_url }
      format.json { head :no_content }
    end
  end
end
