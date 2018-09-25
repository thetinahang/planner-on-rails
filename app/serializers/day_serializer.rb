class DaySerializer < ActiveModel::Serializer
  attributes :id, 
  	:day_day_date, 
  	:day_grateful_1,
    :day_grateful_2, 
    :day_grateful_3,
    :day_excited_1,
    :day_excited_2,
    :day_excited_3,
    :day_affirmation,
    :day_focus,
    :day_exercise,
    :day_priority_1,
    :day_priority_2,
    :day_priority_3,
    :day_priority_4,
    :day_priority_5,
    :day_task_1,
    :day_task_2,
    :day_task_3,
    :day_task_4,
    :day_task_5,
    :day_task_6,
    :day_task_7,
    :day_task_8,
    :day_task_9,
    :day_task_10,
    :day_notes,
    :day_win_1,
    :day_win_2,
    :day_win_3,
    :day_improvement
    
  has_many :hours


end
