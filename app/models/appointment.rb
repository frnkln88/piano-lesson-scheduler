class Appointment < ApplicationRecord
    belongs_to :lesson
    belongs_to :user
    validates :user_id, :lesson_id, :date, :time, :songname, presence:true
end
