class Week < ActiveRecord::Base
	has_many :days
	has_many :hours, through :days
	belongs_to :month
	validates :week_day_date, presence: true
end