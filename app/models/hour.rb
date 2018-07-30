class Hour < ActiveRecord::Base
  belongs_to :day, optional: true #need to figure out this part
  validates :hour_number, presence: true, allow_blank: false
end