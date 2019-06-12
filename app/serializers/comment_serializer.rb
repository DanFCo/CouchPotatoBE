class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :creator

  def creator
    {username: self.object.user.username, avatar: self.object.user.avatar}
  end
end
