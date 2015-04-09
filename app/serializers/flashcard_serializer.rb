class FlashcardSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition, :category
end
