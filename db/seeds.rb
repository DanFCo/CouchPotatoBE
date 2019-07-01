# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






#
#
# require 'rest-client'
# require 'json'
# require 'pry'
#
#     url = "https://api.tvmaze.com/shows"
#
#     response = RestClient.get(url)
#     data = JSON.parse(response)
#     na = "not available"
#     img = "https://jaypeeonline.net/wp-content/uploads/2010/03/technical_difficulty.jpg"
#
#  data.map do |key|
#     name = key["name"]
#     genre = key["genres"].nil? ? na : key["genres"]
#     runtime = key["runtime"].nil? ? na : key["runtime"]
#     website = key["officialSite"].nil? ? na : key["officialSite"]
#     network = key["network"].nil? ? na : key["network"]["name"]
#     rating = key["rating"].nil? ? na : key["rating"]
#     webchannel = key["webChannel"].nil? ? na : key["webChannel"]["name"]
#     thumbnail = key["image"]["medium"].nil? ? img : key["image"]["medium"]
#     poster = key["image"]["original"].nil? ? img : key["image"]["original"]
#     summary = key["summary"].nil? ? na : key["summary"].gsub("</p>"," ").gsub("<p>"," ").gsub("</b>"," ").gsub("<b>"," ").gsub("<i>"," ").gsub("</i>"," ")
#
# Show.create(name: name,
#   genre: genre,
#   runtime: runtime,
#   website: website,
#   rating: rating,
#   network: network,
#   webchannel: webchannel,
#   thumbnail: thumbnail,
#   poster: poster,
#   summary: summary)
# puts "~ ~ Saved " + name
#   end
#
