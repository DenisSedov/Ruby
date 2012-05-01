module WorkersHelper

  def enabledvacancy
    @worker = Worker.find(params[:id])   
    @vacancies = Vacancy.where("validperiod >= ?", Time.now.midnight).order("salary DESC")

    respond_to do |format|
      format.html 
      format.json { render json: @vacancies }
    end
  end  
end
