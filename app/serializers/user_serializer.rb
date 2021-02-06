class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :monthly_income
  has_many :notes
  has_many :expenses
end
