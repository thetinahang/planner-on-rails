class Task < ActiveRecord::Base

  	belongs_to :hour, optional: true
  	belongs_to :day, optional: true

  	def self.group_by_day
  		all.group(:day_id, :hour_id).order("day_id desc")
  	end

end