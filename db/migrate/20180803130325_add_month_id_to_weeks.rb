class AddMonthIdToWeeks < ActiveRecord::Migration[5.1]
  def change
    add_column :weeks, :month_id, :integer
  end
end
