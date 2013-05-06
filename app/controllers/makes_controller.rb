class MakesController < ApplicationController
  def index
      @makes
  end

  def show
      @make = Make.find(params[:id])
  end

  def new
      @make = Make.new
  end

  def create
      @make = Make.new(params[:make])
  end

  def edit
  end

  def update
    if @make.update_attributes(params[:make])
      flash[:success] = "Profile updated"
    else
      render 'edit'
    end
  end

end
