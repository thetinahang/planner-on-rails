class DaysController < ApplicationController
  before_action :set_day, only: [:show, :data, :edit, :update, :destroy]

#  def index
#    @user = current_user
#    @days = Day.where(user_id: @user.id).all.order('created_at DESC')
#  end

  def index
    @user = current_user
    @days = Day.where(user_id: @user.id).all.order('created_at DESC')
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @days}
    end
#    render json: @days, status: 200
  end 

  def new
    @user = current_user
    @day = Day.new
    @day.tasks.build
    @day.user_id = @user.id
  end

  def create
    @user = current_user
    @day = Day.new(day_params)
    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Day was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    if @day.user_id == current_user.id
#      render :show
      respond_to do |format|
        format.html {render :show}
        format.json {render json: @day}
      end
    else
      render 'planner/index'
    end
  end

#  def data
#    render json: @day
#  end 

  def edit
  end

  def update
    @day = Day.find(params[:id])
    if @day.update!(day_params)
      flash[:success] = "Day updated"
      redirect_to @day
    else
      render 'edit'
    end
  end

  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
    end
  end

  private

    def set_day
      @user = current_user
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:id, :day_day_date, 
        :user_id,
        :day_grateful_1,
        :day_grateful_2, 
        :day_grateful_3,
        :day_excited_1,
        :day_excited_2,
        :day_excited_3,
        :day_affirmation,
        :day_focus,
        :day_exercise,
        :day_priority_1,
        :day_priority_2,
        :day_priority_3,
        :day_priority_4,
        :day_priority_5,
        :day_task_1,
        :day_task_2,
        :day_task_3,
        :day_task_4,
        :day_task_5,
        :day_task_6,
        :day_task_7,
        :day_task_8,
        :day_task_9,
        :day_task_10,
        :day_notes,
        :day_win_1,
        :day_win_2,
        :day_win_3,
        :day_improvement,
        tasks_attributes: [
          :id,
          :task_content,
          :hour_id,
          :day_id])
    end

end