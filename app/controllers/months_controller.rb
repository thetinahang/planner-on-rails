class MonthsController < ApplicationController
  before_action :set_month!, only: [:show, :edit, :update, :destroy]

  def index
    @months = Month.all
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new(month_params)
    @month.save
    redirect_to @month
  end

  def show
  end

  def edit
  end

  def update
    if @month.update(month_params)
      redirect_to month_path(@month)
    else
      render :edit
    end
  end

  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_month!
      @month = Month.find(params[:id])
    end

    def month_params
      params.require(:month).permit(:month_name, :month_focus, :month_habit, :month_goal_1, :month_goal_2, :month_goal_3, :month_distraction_1, :month_distraction_2, :month_distraction_3, :month_notes, :month_win_1, :month_win_2, :month_win_3, :month_insight_1, :month_insight_2, :month_insight_3)
    end
end