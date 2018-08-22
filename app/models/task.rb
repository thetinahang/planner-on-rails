class Task < ActiveRecord::Base

  	belongs_to :hour, optional: true
  	belongs_to :day, optional: true

end