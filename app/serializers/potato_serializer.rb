class PotatoSerializer < ActiveModel::Serializer

attributes :id, :show_id, :user_id, :note, :counter, :show

belongs_to :user
belongs_to :show

end
