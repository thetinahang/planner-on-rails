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
    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Day was successfully created.' }
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
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
      else
        format.html { render :edit }
      end
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
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:day_day_date, 
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
        :day_hour_6,
        :day_hour_7,
        :day_hour_8,
        :day_hour_9,
        :day_hour_10,
        :day_hour_11,
        :day_hour_12,
        :day_hour_13,
        :day_hour_14,
        :day_hour_15,
        :day_hour_16,
        :day_hour_17,
        :day_hour_18,
        :day_hour_19,
        :day_hour_20,
        :day_hour_21,
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
        :day_improvement)
    end
end