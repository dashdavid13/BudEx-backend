class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :user_id
  has_many :notes
  has_one :user
end
