class RemoveDayHour15FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_15, :string
  end
end
