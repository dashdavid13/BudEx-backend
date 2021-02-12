class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :expenses, dependent: :destroy
    has_many :notes, dependent: :destroy
end


