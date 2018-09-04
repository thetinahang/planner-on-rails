class RemoveDayHour14FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_14, :string
  end
end
