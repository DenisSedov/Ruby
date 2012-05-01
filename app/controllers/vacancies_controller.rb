class VacanciesController < ApplicationController

  def index
    #@vacancies = Vacancy.all
    @vacancies = Vacancy.order("salary DESC")

    respond_to do |format|
      format.html 
      format.json { render json: @vacancies }
    end
  end

  def show
    @vacancy = Vacancy.find(params[:id])
    #@contactinformation = @vacancy.contactinformation

    respond_to do |format|
      format.html 
      format.json { render json: @vacancy }
   end
  end

  def new    
    @vacancy = Vacancy.new()    
    @vacancy.build_contactinformation
    @contactinformation = @vacancy.contactinformation
    
    respond_to do |format|
      format.html 
      format.json { render json: @vacancy }
    end
   
  end

  def edit
    @vacancy = Vacancy.find(params[:id])
    @contactinformation = @vacancy.contactinformation
  end

  def create
    @vacancy = Vacancy.new(params[:vacancy])    
    @contactinformation = @vacancy.contactinformation
    #@vacancy.build_contactinformation
    #@contactinformation.save
       
    respond_to do |format|
      if @vacancy.save        
        format.html { redirect_to @vacancy, notice: 'Vacancy was successfully created.' }
        format.json { render json: @vacancy, status: :created, location: @vacancy }
      else
        format.html { render action: "new" }
        format.json { render json: @vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    #params[:vacancy][:skill_ids] || [] #

    @vacancy = Vacancy.find(params[:id]) #
    #@vacancy.build_contactinformation
    #@contactinformation = @vacancy.contactinformation 
    #@contactinformation.update
    #@vacancy = Vacancy.find(current_vacancy) #

    respond_to do |format|
      if @vacancy.update_attributes(params[:vacancy])
        format.html { redirect_to @vacancy, notice: 'Vacancy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vacancy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vacancy = Vacancy.find(params[:id])    
    @vacancy.destroy

    respond_to do |format|
      format.html { redirect_to vacancies_url }
      format.json { head :no_content }
    end
  end

end
