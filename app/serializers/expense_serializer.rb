class ExpenseSerializer < ActiveModel::Serializer
  attributes :id,  :name, :cost
  has_many :notes
  has_one :user
end
