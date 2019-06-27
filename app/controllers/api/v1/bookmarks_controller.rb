class Api::V1::BookmarksController < ApplicationController

skip_before_action :authorized, only: [:index, :new, :get, :destroy, :most]




def index
  bookmarks = Bookmark.all
render json: bookmarks
end



def most

show = Show.all.max_by{|show| show.bookmarks.length}

render json: show

end

def get
 id = params[:id]
 user = User.find(id)
 myUser = user.shows
 render json: myUser
end


  def index
    bookmarks = Bookmark.all
  render json: bookmarks
  end





  def new
    user = params[:user]
    show = params[:show]
    bookmark = Bookmark.find_or_create_by(show_id: show, user_id: user)
    render json: bookmark
  end


def destroy

  bookmark = Bookmark.find(params[:show])
  bookmark.destroy
  render json: {message: "Show Has Been Removed From Your Watch List"}

end






end ##====================END OF CLASS============================
