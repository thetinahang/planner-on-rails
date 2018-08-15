class Task < ActiveRecord::Base

  	belongs_to :hour, optional: true #need to figure out this part
  	belongs_to :day, optional: true
  	
  	validates :task_content, presence: true
end