class WorkersController < ApplicationController

  def index
    @workers = Worker.all

    respond_to do |format|
      format.html 
      format.json { render json: @workers }
    end
  end

  def show
    @worker = Worker.find(params[:id])
    @worker.build_contactinformation

    respond_to do |format|
      format.html
      format.json { render json: @worker }
    end
  end

  def new
    @worker = Worker.new
    @worker.build_contactinformation    
    #@worker.contactinformation.save
    #@worker.build_status
    @statuses = Status.all
    @contactinformation = @worker.contactinformation

    respond_to do |format|
      format.html
      format.json { render json: @worker }
    end
  end

  def edit
    @worker = Worker.find(params[:id])
    @worker.build_contactinformation
    @contactinformation = @worker.contactinformation
    @statuses = Status.all
  end

  def create
    @worker = Worker.new(params[:worker])
    #@worker.build_contactinformation
    #@worker.build_status

    respond_to do |format|
      if @worker.save
        format.html { redirect_to @worker, notice: 'Worker was successfully created.' }
        format.json { render json: @worker, status: :created, location: @worker }
      else
        format.html { render action: "new" }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @worker = Worker.find(params[:id])

    respond_to do |format|
      if @worker.update_attributes(params[:worker])
        format.html { redirect_to @worker, notice: 'Worker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @worker.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @worker = Worker.findy(params[:id])
    @worker.destroyy

    respond_to do |format|
      format.html { redirect_to workers_url }
      format.json { head :no_content }
    end
  end

end
