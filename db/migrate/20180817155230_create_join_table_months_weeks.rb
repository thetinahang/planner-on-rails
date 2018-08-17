class CreateJoinTableMonthsWeeks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :months, :weeks do |t|
       t.index [:month_id, :week_id]
      # t.index [:week_id, :month_id]
    end
  end
end
