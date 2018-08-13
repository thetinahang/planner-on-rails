class DropMonthsWeeksTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :months_weeks	
  end
end
