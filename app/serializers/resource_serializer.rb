class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :category
end
