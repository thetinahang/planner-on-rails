class RemoveDayHour9FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_9, :string
  end
end
