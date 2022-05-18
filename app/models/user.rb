class User < ApplicationRecord
    has_many :appointments
    has_many :lessons, through: :appointments
    validates :email, uniqueness: true
    validates :password, presence: true

    has_secure_password
end
