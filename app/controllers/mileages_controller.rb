class MileagesController < ApplicationController
  def index
    store_location
    @mileages = Mileage.all
  end

  def show
  end

  def new
    @mileage = Mileage.new
    @vehicles = Vehicle.all
  end

  def create
    mileage = Mileage.new(params[:mileage])

    if mileage.save
      flash[:notice] = 'Mileage entry was successfully created'
      redirect_back_or mileages_path
    else
      @vehicles = Vehicle.all
      flash[:notice] = 'Mileage entry could not be saved'
      redirect_back_or new_mileage_path
    end
  end

end
