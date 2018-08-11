class Month < ActiveRecord::Base

	has_many :months_weeks
	has_many :weeks, through: :months_weeks #has many through req

	accepts_nested_attributes_for :weeks
	has_many :days, through: :weeks
	belongs_to :user, optional: true  #need to figure out this part
	validates :month_name, presence: true

	def self.recent_five
		order('updated_at DESC').limit(5)
	end
	
end