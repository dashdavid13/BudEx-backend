class User < ApplicationRecord
    has_secure_password
    has_many :notes, dependent: :destroy
    has_many :expenses, dependent: :destroy
end
