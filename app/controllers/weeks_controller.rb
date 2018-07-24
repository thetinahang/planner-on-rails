class WeeksController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

   def edit
  	@week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    @week.update(params.require(:week)) #need to fix this line
    redirect_to week_path(@week)
  end

end