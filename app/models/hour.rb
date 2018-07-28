class Hour < ActiveRecord::Base
  belongs_to :day
  validates :hour_number, presence: true
end