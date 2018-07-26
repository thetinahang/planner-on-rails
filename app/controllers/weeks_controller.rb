class WeeksController < ApplicationController

  def index
  end

  def new
  end

  def create
    @week = Week.create(week_params)
    @week.save
    redirect_to week_path(@week)
  end

  def show
    @week = Week.find(params[:id])
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    @week.update(week_params)
    redirect_to week_path(@week)
  end

  private

    def week_params
      params.require(:week).permit(:week_day_date, :week_big_win_1, :week_improvement_1)
    end
end