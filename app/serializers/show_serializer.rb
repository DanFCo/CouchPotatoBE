class ShowSerializer < ActiveModel::Serializer

  attributes :id, :name, :genre, :runtime, :website, :rating, :network, :webchannel, :thumbnail, :poster, :summary

  has_many :comments


end
