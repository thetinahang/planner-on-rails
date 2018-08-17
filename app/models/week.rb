class Week < ActiveRecord::Base
	
	has_many :days
	belongs_to :month, optional: true #need to figure out this part
	has_many :months
	accepts_nested_attributes_for :months

	has_many :months_weeks
	has_many :months, through: :months_weeks


	validates :week_day_date, presence: true
	
end