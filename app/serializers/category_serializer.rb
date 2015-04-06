class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :resources, :flashcards
  has_many :resources
  has_many :flashcards
end
