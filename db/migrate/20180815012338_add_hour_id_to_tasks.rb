class AddHourIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :hour_id, :integer
  end
end
