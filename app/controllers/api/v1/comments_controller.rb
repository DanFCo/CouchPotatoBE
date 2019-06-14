class Api::V1::CommentsController < ApplicationController

  skip_before_action :authorized, only: [:new, :get, :index]


  def index
    comments = Comment.all
    render json: comments
  end

  def new
    user = params[:user]
    show = params[:show]
    newComment = params[:comment]
    comment = Comment.create(user_id: user, show_id: show, comment: newComment, date_time: Time.now)
    render json: comment
  end


  def get
    id = params[:id]
    show =Show.find(id)
    comments = show.comments

    render json: comments
  end








end
