class Api::V1::ShowsController < ApplicationController

skip_before_action :authorized, only: [:index, :show]



  def index
    shows = Show.all
    render json: shows
  end

  def show

    show = Show.find(params[:id])
    render json: show
  end






end
