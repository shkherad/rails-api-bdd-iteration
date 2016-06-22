class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :comment
end
