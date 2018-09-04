class RemoveDayHour16FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_16, :string
  end
end
