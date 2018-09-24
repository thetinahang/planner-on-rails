class TaskSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :hour_id, :task_content
  belongs_to :day
  belongs_to :hour
end
