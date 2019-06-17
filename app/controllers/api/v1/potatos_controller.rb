class Api::V1::PotatosController < ApplicationController

  skip_before_action :authorized, only: [:new, :index]


def index

potatos = Potato.all

render json: potatos

end




  def new
    username = params[:username]
    show = params[:show][:id]
    note = params[:note]
    user = User.find_by(username: username)
    if !!user
      potato = Potato.create(user_id: user.id, show_id: show, note: note)
      render json: potato
    else
      render json: {errors: "There is No User By That Name"}
    end
  end



end#-----------------END OF CLASS----------------
