class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :due_date, :name, :cost
  has_many :notes
  has_one :user
end
