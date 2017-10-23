class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :where_to_find, :notes, :user
end
