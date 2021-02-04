class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :due_date, :name, :cost
  has_one :user
end
