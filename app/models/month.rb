class Month < ActiveRecord::Base
	has_many :weeks
	has_many :days, through: :weeks
	belongs_to :user, optional: true #need to figure out this part
	validates :month_name, presence: true
end