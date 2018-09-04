class RemoveDayHour20FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_20, :string
  end
end
