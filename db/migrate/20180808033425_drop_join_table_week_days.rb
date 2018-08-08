class DropJoinTableWeekDays < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :weeks, :days do |t|
       t.index [:week_id, :day_id]
      # t.index [:day_id, :week_id]
    end
  end
end
