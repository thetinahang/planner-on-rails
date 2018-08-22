class Month < ActiveRecord::Base

	has_many :weeks
	belongs_to :user, optional: false

	accepts_nested_attributes_for :weeks

	has_many :months_weeks
	has_many :weeks, through: :months_weeks
	
	validates :month_name, presence: true
	validates :user_id, presence: true

	def self.recent_five
		order('updated_at DESC').limit(5)
	end
	
end