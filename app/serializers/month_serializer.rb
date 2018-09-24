class MonthSerializer < ActiveModel::Serializer
  attributes :id
  has_many :weeks, serializer: WeekSerializer
end
