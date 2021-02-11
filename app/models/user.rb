class User < ApplicationRecord
    has_many :expenses, dependent: :destroy
    has_many :notes, dependent: :destroy
end


