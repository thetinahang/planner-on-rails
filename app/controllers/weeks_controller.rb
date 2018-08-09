class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  def index
    @weeks = Week.all.order('created_at DESC')
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    respond_to do |format|
      if @week.save
        format.html { redirect_to @week, notice: 'Week was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    #@games = Game.joins(:categorization).where('categorization.provider_id = ?',@provider.id)
    @weeks_months_ids = @week.months.ids
    #@months = Month.joins(:months_weeks).where('months_weeks.month_ids = ?',@month.id)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'Week was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'Week was successfully destroyed.' }
    end
  end

  private

    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:week_day_date, 
        :week_big_win_1,
        :week_big_win_2,
        :week_big_win_3,
        :week_big_win_4,
        :week_big_win_5,
        :week_improvement_1,
        :week_improvement_2,
        :week_personal,
        :week_work,
        :week_family_friends,
        :week_relationship,
        :week_forward_1,
        :week_forward_2,
        :week_forward_3,
        :week_habit_1,
        :week_habit_2,
        :week_learn,
        :week_passion,
        :week_project_1,
        :week_project_2,
        :week_project_3,
        :week_project_4,
        :week_goal_1,
        :week_goal_2,
        :week_goal_3,
        :week_goal_4,
        :week_goal_5,
        month_ids:[], months_attributes: [:month_name])
    end
end