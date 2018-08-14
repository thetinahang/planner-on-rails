class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  def index
    if params[:month_id]
      @user = current_user
      @weeks = @user.months.find(params[:month_id]).weeks
    else 
      @user = current_user
      @weeks = Week.where(user_id: @user.id).all.order('created_at DESC')
    end 
  end

  def new
    @user = current_user
    @week = Week.new
    @week.user_id = @user.id
  end

  def create
    @user = current_user
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
    @id = @week.user_id
    @weeks_months_ids = @week.months.ids
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
      @user = current_user
      @week = @user.weeks.find(params[:id])
    end

    def week_params
      params.require(:week).permit(
        :user_id,
        :week_day_date, 
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