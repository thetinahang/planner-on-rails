class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]

  def index
    @months = Month.all.order('created_at DESC')
  end

  def new
    @month = current_user.months.build
  end

  def create
    @month = current_user.months.new(month_params)
    respond_to do |format|
      if @month.save
        format.html { redirect_to @month, notice: 'Month was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @month.update(month_params)
        format.html { redirect_to @month, notice: 'Month was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to months_url, notice: 'Month was successfully destroyed.' }
    end
  end

  private

    def set_month
      @month = Month.find(params[:id])
    end

    def month_params
      params.require(:month).permit(:month_name, 
        :month_focus, 
        :month_habit, 
        :month_goal_1, 
        :month_goal_2, 
        :month_goal_3, 
        :month_distraction_1, 
        :month_distraction_2, 
        :month_distraction_3, 
        :month_notes, 
        :month_win_1, 
        :month_win_2, 
        :month_win_3, 
        :month_insight_1, 
        :month_insight_2, 
        :month_insight_3,
        :user_id)
    end

end