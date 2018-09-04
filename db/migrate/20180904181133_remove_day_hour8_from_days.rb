class RemoveDayHour8FromDays < ActiveRecord::Migration[5.1]
  def change
    remove_column :days, :day_hour_8, :string
  end
end
