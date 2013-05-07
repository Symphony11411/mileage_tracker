class ModelsController < ApplicationController

  def index
    @title = "My Model"
    @models = Model.all
  end

  def new
    @model = Model.new
    @makes = Make.all
  end

  def create
      @model = Model.new(params[:model])

    respond_to do |format|
      if @model.save
        format.html { redirect_to(models_url, :notice => 'Model successfully created.') }
        format.xml  { render :xml => @model, :status => :created, :location => @model }
      else
        @makes = Make.all
        format.html { render :action => "new" }
        format.xml  { render :xml => @model.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @model = Model.find(params[:id])
    @makes = Make.all
  end

  def update
    @model = Model.find(params[:id])

    respond_to do |format|
      if @model.update_attributes(params[:model])
        format.html { redirect_to(models_url, :notice => 'Model successfully updated.') }
        format.xml  { head :ok }
      else
        @makes = Make.all
        format.html { render :action => "edit" }
        format.xml  { render :xml => @model.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @vehicles = Vehicle.where(:model_id => params[:id])
    if @vehicles.empty?
        @model.destroy
      respond_to do |format|
        format.html { redirect_to(models_url, :notice => 'Model successfully deleted') }
        format.xml  { head :ok }
      end
    else
      respond_to do |format|
        format.html { redirect_to(models_url, :notice => 'Model not deleted, vehicle(s) found') }
        format.xml  { head :ok }
      end
    end
  end

end
