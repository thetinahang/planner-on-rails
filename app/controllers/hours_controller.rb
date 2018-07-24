class HoursController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

   def edit
  	@hour = Hour.find(params[:id])
  end

  def update
    @hour = Hour.find(params[:id])
    @hour.update(params.require(:hour)) #need to fix this line
    redirect_to hour_path(@hour)
  end

end