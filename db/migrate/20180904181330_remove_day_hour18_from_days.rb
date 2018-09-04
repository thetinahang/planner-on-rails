class RemoveDayHour18FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_18, :string
  end
end
