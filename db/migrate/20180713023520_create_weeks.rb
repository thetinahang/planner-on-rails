class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
    	t.string :week_day_date
    	t.string :week_big_win_1
    	t.string :week_big_win_2
    	t.string :week_big_win_3
    	t.string :week_big_win_4
    	t.string :week_big_win_5
    	t.string :week_improvement_1
    	t.string :week_improvement_2
    	t.string :week_personal
    	t.string :week_work
    	t.string :week_family_friends
    	t.string :week_relationship
    	t.string :week_forward_1
    	t.string :week_forward_2
    	t.string :week_forward_3
    	t.string :week_habit_1
    	t.string :week_habit_2
    	t.string :week_learn
    	t.string :week_passion
    	t.string :week_project_1
    	t.string :week_project_2
    	t.string :week_project_3
    	t.string :week_project_4
    	t.string :week_goal_1
    	t.string :week_goal_2
    	t.string :week_goal_3
    	t.string :week_goal_4
    	t.string :week_goal_5
    	t.timestamps null: false
    end
  end
end
