class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
    	t.string :day_day_date
    	t.string :day_grateful_1
    	t.string :day_grateful_2
    	t.string :day_grateful_3
    	t.string :day_excited_1
    	t.string :day_excited_2
    	t.string :day_excited_3
    	t.string :day_affirmation
    	t.string :day_focus
    	t.string :day_exercise
    	t.string :day_priority_1
    	t.string :day_priority_2
    	t.string :day_priority_3
    	t.string :day_priority_4
    	t.string :day_priority_5
    	t.string :day_hour_6
    	t.string :day_hour_7
    	t.string :day_hour_8
    	t.string :day_hour_9
    	t.string :day_hour_10
    	t.string :day_hour_11
    	t.string :day_hour_12
    	t.string :day_hour_13
    	t.string :day_hour_14
    	t.string :day_hour_15
    	t.string :day_hour_16
    	t.string :day_hour_17
    	t.string :day_hour_18
    	t.string :day_hour_19
    	t.string :day_hour_20
    	t.string :day_hour_21
    	t.string :day_task_1
    	t.string :day_task_2
    	t.string :day_task_3
    	t.string :day_task_4
    	t.string :day_task_5
    	t.string :day_task_6
    	t.string :day_task_7
    	t.string :day_task_8
    	t.string :day_task_9
    	t.string :day_task_10
    	t.string :day_notes, :limit => 500
    	t.string :day_win_1
    	t.string :day_win_2
    	t.string :day_win_3
    	t.string :day_improvement
    	t.timestamps null: false    	
    end
  end
end
