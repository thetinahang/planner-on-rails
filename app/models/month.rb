class Month < ActiveRecord::Base

	has_many :weeks
	belongs_to :user, optional: false  #need to figure out this part

	validates :month_name, presence: true
	validates :user_id, presence: true

	def self.recent_five
		order('updated_at DESC').limit(5)
	end
	
end