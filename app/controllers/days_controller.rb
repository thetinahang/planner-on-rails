class DaysController < ApplicationController

  def index
  end

  def new
  end

  def create
    @day = Day.create(day_params)
    @day.save
    redirect_to day_path(@day)
  end

  def show
  	@day = Day.find(params[:id])
  end

  def edit
  	@day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to day_path(@day)
  end

  private

    def day_params
      params.require(:day).permit(:day_day_date, :day_grateful_1, :day_grateful_2, :day_grateful_3)
    end
end