class AddWeekIdToMonths < ActiveRecord::Migration[5.1]
  def change
  	add_column :months, :week_id, :integer
  end
end
