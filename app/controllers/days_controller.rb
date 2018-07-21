class DaysController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  	@day = Day.find(params[:id])
  end

  def edit
  	@day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(params) #need to fix this line
    redirect_to day_path(@day)
  end

end