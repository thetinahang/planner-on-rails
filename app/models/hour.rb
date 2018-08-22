class Hour < ActiveRecord::Base

	has_many :tasks
	has_many :days, through: :tasks
	accepts_nested_attributes_for :tasks
  
end