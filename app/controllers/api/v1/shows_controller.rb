class Api::V1::ShowsController < ApplicationController

skip_before_action :authorized, only: [:index, :show, :search]



  def index
    shows = Show.all
    render json: shows
  end


def search


  term = params[:search]

  url = "http://api.tvmaze.com/search/shows?q=#{term}"

  response = RestClient.get(url)
  data = JSON.parse(response)
  na = "not available"
  img = "https://jaypeeonline.net/wp-content/uploads/2010/03/technical_difficulty.jpg"

  created_shows = data.map do |key|
     name = key["show"]["name"].nil? ? na : key["show"]["name"]
     genre = key["show"]["genres"].empty? ? na : key["show"]["genres"]
     runtime = key["show"]["runtime"].nil? ? na : key["show"]["runtime"]
     website = key["show"]["officialSite"].nil? ? na : key["show"]["officialSite"]
     network = key["show"]["network"].nil? ? na : key["show"]["network"]["name"]
     rating = key["show"]["rating"]["average"].nil? ? na : key["show"]["rating"]["average"].to_i
     webchannel = key["show"]["webChannel"].nil? ? na : key["show"]["webChannel"]["name"]
     thumbnail = key["show"]["image"].nil? ? img : key["show"]["image"]["medium"]
     poster = key["show"]["image"].nil? ? img : key["show"]["image"]["original"]
     summary = key["show"]["summary"].nil? ? na : key["show"]["summary"].gsub("</p>"," ").gsub("<p>"," ").gsub("</b>"," ").gsub("<b>"," ").gsub("<i>"," ").gsub("</i>"," ")

  Show.find_or_create_by(name: name,
   genre: genre,
   runtime: runtime,
   website: website,
   rating: rating,
   network: network,
   webchannel: webchannel,
   thumbnail: thumbnail,
   poster: poster,
   summary: summary)
 end

render json: created_shows

end




  def show

    show = Show.find(params[:id])
    render json: show
  end






end
