class RemoveDayHour10FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_10, :string
  end
end
