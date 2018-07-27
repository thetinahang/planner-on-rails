class MonthsController < ApplicationController

  def index
    @months = Month.all
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.create(month_params)
    @month.save
    redirect_to month_path(@month)
  end

  def show
    @month = Month.find(params[:id])
  end

  def edit
    @month = Month.find(params[:id])
  end

  def update
    @month = Month.find(params[:id])
    @month.update(month_params)
    redirect_to month_path(@month)
  end

  private

    def month_params
      params.require(:month).permit(:month_name, :month_focus)
    end
end