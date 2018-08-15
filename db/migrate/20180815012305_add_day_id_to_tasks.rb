class AddDayIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :day_id, :integer
  end
end
