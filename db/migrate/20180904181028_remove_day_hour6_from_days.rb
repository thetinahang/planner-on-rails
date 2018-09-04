class RemoveDayHour6FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_6, :string
  end
end
