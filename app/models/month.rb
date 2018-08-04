class Month < ActiveRecord::Base
	has_many :weeks
	accepts_nested_attributes_for :weeks
	
	has_many :days, through: :weeks

	belongs_to :user, optional: false #need to figure out this part
	validates :month_name, presence: true

	def self.first_five
		order(:updated_at).limit(5)
	end
end