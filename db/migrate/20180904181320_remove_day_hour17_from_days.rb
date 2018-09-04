class RemoveDayHour17FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_17, :string
  end
end
