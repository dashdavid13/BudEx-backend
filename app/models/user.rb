class User < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :expenses, dependent: :destroy
end
