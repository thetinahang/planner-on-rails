class Week < ActiveRecord::Base
	has_many :days
	has_many :hours, through: :days
	belongs_to :month, optional: true #need to figure out this part
	validates :week_day_date, presence: true, allow_blank: false
end