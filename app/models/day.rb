class Day < ActiveRecord::Base

	has_many :tasks
	has_many :hours, through: :tasks
	accepts_nested_attributes_for(:tasks, update_only: true)
	
	belongs_to :week, optional: true #need to figure out this part

	validates :day_day_date, presence: true


	def tasks_attributes=(task_attributes)
		task_attributes.values.each do |task_attribute|
			task = Task.find_or_create_by(task_attribute)
			self.tasks << task
		end
	end

end