class Day < ActiveRecord::Base
	has_many :hours
	belongs_to :week
end