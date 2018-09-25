class HourSerializer < ActiveModel::Serializer
  attributes :id, :hour_number
  has_many :tasks, serializer: TaskSerializer
end
