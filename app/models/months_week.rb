class MonthsWeek < ActiveRecord::Base
	belongs_to :month 
	belongs_to :week
end