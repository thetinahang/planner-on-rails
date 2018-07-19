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

end