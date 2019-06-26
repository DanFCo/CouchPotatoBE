class BookmarkSerializer < ActiveModel::Serializer

attributes :id, :show_id, :user_id, :show

belongs_to :user
belongs_to :show



end
