class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_content, :day_id, :hour_id
end
