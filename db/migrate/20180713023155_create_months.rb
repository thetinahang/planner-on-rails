class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
    	t.string :month_name
    	t.string :month_focus
    	t.string :month_habit
    	t.string :month_goal_1
    	t.string :month_goal_2
    	t.string :month_goal_3
    	t.string :month_distraction_1
    	t.string :month_distraction_2
    	t.string :month_distraction_3
    	t.string :month_notes, :limit => 500
    	t.string :month_win_1
    	t.string :month_win_2
    	t.string :month_win_3
    	t.string :month_insight_1
    	t.string :month_insight_2
    	t.string :month_insight_3
    	t.timestamps null: false
    end
  end
end
