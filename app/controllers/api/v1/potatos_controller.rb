class Api::V1::PotatosController < ApplicationController

  skip_before_action :authorized, only: [:new, :index, :update, :find_pots, :destroy]




  def find_pots
    userId = params[:user][:id]
    user = User.find(userId)
    potatos = user.potatoes
    render json: potatos
  end

  

  def index
    potatos = Potato.all
    potato = potatos.max_by{|pot| pot.counter}
    render json: potato
  end

  def update
    user = User.find_by(username: params[:user])
    if !!user
      potato = Potato.find(params[:id])
      count = potato.counter + 1
      potato.update(user_id: user.id,note: params[:note],counter: count)
      render json: potato
    else
      render json: {errors: "There Is No User By That Name"}
    end
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

  def destroy
    potato = Potato.find(params[:id])
    potato.destroy
    render json: {message: "Potato has been thrown away"}
  end

end#-----------------END OF CLASS----------------
