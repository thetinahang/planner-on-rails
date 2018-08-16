class Hour < ActiveRecord::Base

	has_many :tasks
	has_many :days, through: :tasks
	accepts_nested_attributes_for :tasks
  	#belongs_to :day, optional: true #need to figure out this part
  
  	#validates :hour_number, presence: true
  
end