class Day < ActiveRecord::Base

	has_many :tasks
	has_many :hours, through: :tasks
	accepts_nested_attributes_for :tasks
	
	belongs_to :week, optional: true

	validates :day_day_date, presence: true




end