class LessonSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :start_time, :duration
end
