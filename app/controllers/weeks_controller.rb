class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  def index
    @weeks = Week.all
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    if @week.valid?
      @week.save
      redirect_to week_path(@week)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @week.update(week_params)
      redirect_to week_path(@week)
    else
      render :edit
    end
  end

  def destroy
    @week.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_week!
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:week_day_date, :week_big_win_1, :week_improvement_1)
    end
end