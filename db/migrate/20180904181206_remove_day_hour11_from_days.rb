class RemoveDayHour11FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_11, :string
  end
end
