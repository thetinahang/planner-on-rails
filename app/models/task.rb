class Task < ActiveRecord::Base
	
  	belongs_to :hour, optional: false #need to figure out this part

  	validates :task_content, presence: true
end