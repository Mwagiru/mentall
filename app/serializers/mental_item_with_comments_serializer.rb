class MentalItemWithCommentsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :comments

end
