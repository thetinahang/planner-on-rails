class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)
    if @day.valid?
      @day.save
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @day.update(day_params)
      redirect_to day_path(@day)
    else
      render :edit
    end
  end

  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_day!
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:day_day_date, :day_grateful_1, :day_grateful_2, :day_grateful_3)
    end
end