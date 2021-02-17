class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true
    validates :password, presence: true
    validates :monthly_income, presence: true
    validates :username, uniqueness: true
    has_many :expenses, dependent: :destroy
    has_many :notes, dependent: :destroy
end


