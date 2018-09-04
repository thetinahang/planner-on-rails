class RemoveDayHour7FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_7, :string
  end
end
