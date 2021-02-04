class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :expense
end
