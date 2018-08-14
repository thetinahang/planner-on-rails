class Week < ActiveRecord::Base
	
	belongs_to :month, optional: true #need to figure out this part

	validates :week_day_date, presence: true, allow_blank: false

	has_many :days

	#has_many :months_weeks
	#has_many :months, through: :months_weeks #has many through req
	#accepts_nested_attributes_for :months

	#belongs_to :user, optional: false
	

	def months_attributes=(month_attributes)
		month_attributes.values.each do |month_attribute|
			month = Month.find_or_create_by(month_attribute)
	        self.months << month
		end
	end
	
end