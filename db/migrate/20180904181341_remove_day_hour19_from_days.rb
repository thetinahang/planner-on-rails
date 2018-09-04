class RemoveDayHour19FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_19, :string
  end
end
