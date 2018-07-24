class MonthsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

   def edit
  	@month = Month.find(params[:id])
  end

  def update
    @month = Month.find(params[:id])
    @month.update(params.require(:month)) #need to fix this line
    redirect_to month_path(@month)
  end

end