class HoursController < ApplicationController

  def index
  end

  def new
  end

  def create
    @hour = Hour.create(hour_params)
    @hour.save
    redirect_to hour_path(@hour)
  end

  def show
    @hour = Hour.find(params[:id])
  end

  def edit
  	@hour = Hour.find(params[:id])
  end

  def update
    @hour = Hour.find(params[:id])
    @hour.update(hour_params)
    redirect_to hour_path(@hour)
  end

  private

    def hour_params
      params.require(:hour).permit(:hour_number)
    end
end