class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :comments
  has_many :workouts
end
