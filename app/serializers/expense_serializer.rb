class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :user_id
  has_one :user
  has_many :notes
end
