class WeekSerializer < ActiveModel::Serializer
  attributes :id, :week_day_date, :week_personal, :week_work
end
