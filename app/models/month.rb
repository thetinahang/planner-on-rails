class Month < ActiveRecord::Base

	validates :month_name, presence: true

	belongs_to :user, optional: false  #need to figure out this part

	has_many :weeks
	#has_many :months_weeks
	#has_many :weeks, through: :months_weeks #has many through req

	#accepts_nested_attributes_for :weeks
	#has_many :days, through: :weeks
	
	

	def self.recent_five
		order('updated_at DESC').limit(5)
	end
	
end