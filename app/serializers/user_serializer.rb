class UserSerializer < ActiveModel::Serializer

attributes :id, :username, :avatar

has_many :bookmarks
has_many :potatoes



end
