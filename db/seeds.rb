# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)








require 'rest-client'
require 'json'
require 'pry'

    url = "https://api.tvmaze.com/shows"

    response = RestClient.get(url)
    data = JSON.parse(response)
    na = "not available"
    img = "https://jaypeeonline.net/wp-content/uploads/2010/03/technical_difficulty.jpg"

 data.map do |key|
    name = key["name"]
    genre = key["genres"].nil? ? na : key["genres"]
    runtime = key["runtime"].nil? ? na : key["runtime"]
    website = key["officialSite"].nil? ? na : key["officialSite"]
    network = key["network"].nil? ? na : key["network"]["name"]
    rating = key["rating"].nil? ? na : key["rating"]
    webchannel = key["webChannel"].nil? ? na : key["webChannel"]["name"]
    thumbnail = key["image"]["medium"].nil? ? img : key["image"]["medium"]
    poster = key["image"]["original"].nil? ? img : key["image"]["original"]
    summary = key["summary"].nil? ? na : key["summary"].gsub("</p>"," ").gsub("<p>"," ").gsub("</b>"," ").gsub("<b>"," ").gsub("<i>"," ").gsub("</i>"," ")

Show.create(name: name,
  genre: genre,
  runtime: runtime,
  website: website,
  rating: rating,
  network: network,
  webchannel: webchannel,
  thumbnail: thumbnail,
  poster: poster,
  summary: summary)
puts "~ ~ Saved " + name
  end







  #     data.map do |x|
  #
  #     Show.create(
  #
  #
  #       name: x["name"],
  #       genre: x["genres"],
  #       runtime: x["runtime"],
  #       website: x["officialSite"],
  #       # network: ["network"]["name"],
  #       thumbnail: x["image"]["medium"],
  #       poster: x["image"]["original"],
  #       summary: x["summary"]
  #     )
  #
  #
  # end

# no network







# user3 = User.create(username: "danny", password_digest: "kjhsdklfh", avatar: "monkey")
# user1 = User.create(username: "mikey", password_digest: "kjhsdklfh", avatar: "duck")
# user2 = User.create(username: "eddie", password_digest: "kjhsdklfh", avatar: "bird")
#
# show1 = Show.create(name: "this is a name of a show")
# show2 = Show.create(name: "Gilligans Island")
# show3 = Show.create(name: "Jerry Springer")
#
#
# Potato.create(user: user1, show: show1, note: "this is a note left for the user")
#
#
#
# Bookmark.create(user: user3, show: show3)
#
# Comment.create(user: user2, show: show2, comment: "i'm a comment")
# Comment.create(user: user3, show: show1, comment: "i'm a comment")

#
#
# https://api.adorable.io/avatars/285/cc
# https://api.adorable.io/avatars/285/dann
# https://api.adorable.io/avatars/285/jerry
# https://api.adorable.io/avatars/285/edwin
# https://api.adorable.io/avatars/285/dario
# https://api.adorable.io/avatars/285/mike
