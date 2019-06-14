class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :date_time

belongs_to :user



  # def creator
  #   {username: self.object.user.username, avatar: self.object.user.avatar}
  # end
end
