class RemoveDayHour21FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_21, :string
  end
end
