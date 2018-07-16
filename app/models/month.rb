class Month < ActiveRecord::Base
	has_many :weeks
	has_many :days, through: :weeks
	belongs_to :user 
end