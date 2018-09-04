class RemoveDayHour12FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_12, :string
  end
end
