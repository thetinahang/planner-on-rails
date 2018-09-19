class DaySerializer < ActiveModel::Serializer
  attributes :id, :day_day_date
  has_many :tasks
end
