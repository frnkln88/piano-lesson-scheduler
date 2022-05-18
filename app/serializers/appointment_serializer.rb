class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lesson_id, :songname, :date, :time
end
