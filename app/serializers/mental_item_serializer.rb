class MentalItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :is_favorited
end
