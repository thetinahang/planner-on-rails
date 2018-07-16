class Week < ActiveRecord::Base
	has_many :days
	has_many :hours, through :days
	belongs_to :month
end