class Day < ActiveRecord::Base
	has_many :hours
	belongs_to :week
	validates :day_day_date, presence: true
end