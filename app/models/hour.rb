class Hour < ActiveRecord::Base
  belongs_to :day
  validates :hour_number, presence: true, allow_blank: false
end