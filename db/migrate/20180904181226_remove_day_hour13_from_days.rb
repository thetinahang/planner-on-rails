class RemoveDayHour13FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_13, :string
  end
end
