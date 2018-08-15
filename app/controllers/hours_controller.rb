class HoursController < ApplicationController
  before_action :set_hour, only: [:show, :edit, :update, :destroy]

  def index
    @hours = Hour.all
  end

  def new
    @hour = Hour.new
  end

  def create
    @hour = Hour.new(hour_params)
    if @hour.valid?
      @hour.save
      redirect_to hour_path(@hour)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @hour.update(hour_params)
      redirect_to hour_path(@hour)
    else
      render :edit
    end
  end

  def destroy
    @hour.destroy
    respond_to do |format|
      format.html { redirect_to hours_url, notice: 'Hour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_hour
      @hour = Hour.find(params[:id])
    end

    def hour_params
      params.require(:hour).permit(:hour_number)
    end
end