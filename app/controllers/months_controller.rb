class MonthsController < ApplicationController
  before_action :set_month, only: [:show, :edit, :update, :destroy]

  def index
    @months = Month.all
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new(month_params)
    if @month.valid?
      @month.save
      redirect_to month_path(@month)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @month.update(month_params)
    redirect_to month_path(@month)
  end

  def destroy
    @month.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Month was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_month
      @month = Month.find(params[:id])
    end

    def month_params
      params.require(:month).permit(:month_name, :month_focus)
    end
end