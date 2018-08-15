class Day < ActiveRecord::Base

	has_many :tasks
	has_many :hours, through: :tasks
	accepts_nested_attributes_for :hours

	belongs_to :week, optional: true #need to figure out this part

	validates :day_day_date, presence: true


	def hours_attributes=(hour_attributes)
		hour_attributes.values.each do |hour_attribute|
			hour = Hour.find_or_create_by(hour_attribute)
			self.hours << hour
		end
	end

end