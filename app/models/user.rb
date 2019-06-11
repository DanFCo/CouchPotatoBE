class User < ApplicationRecord
  has_many :bookmarks
  has_many :shows, through: :bookmarks
  has_many :potatoes
  has_many :potatoshows, through: :potatoes, source: :show
  has_many :comments
  has_many :commentshows, through: :comments, source: :show

has_secure_password

validates :username, uniqueness: { case_sensitive: false }


end
