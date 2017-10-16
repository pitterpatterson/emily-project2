class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :price, :where_to_find, :relationship_status
end
