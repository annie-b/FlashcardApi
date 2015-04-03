class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :title, :term, :definition, :category, :user
end
