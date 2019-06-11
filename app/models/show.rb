class Show < ApplicationRecord
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_many :potatoes
  has_many :userpotatos, through: :potatoes, source: :user
  has_many :comments
  has_many :usercomments, through: :comments, source: :user
end
