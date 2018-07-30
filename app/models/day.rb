class Day < ActiveRecord::Base
	has_many :hours
	belongs_to :week, optional: true #need to figure out this part
	validates :day_day_date, presence: true, allow_blank: false
end