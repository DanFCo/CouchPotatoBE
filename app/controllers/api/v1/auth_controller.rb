class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :auto_login]

  def create

    user = User.find_by(username: params[:username])
    #User#authenticate comes from BCrypt
    if user && user.authenticate(params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: user.id })
      # byebug
      render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { errors: 'Invalid username or password' }, status: :unauthorized
    end
  end




  def auto_login
    user = current_user
    if user
      render json: user
    else
      render json: {error: "You're one bad potato"}
    end
  end
  # private
  #
  # def user_login_params
  #
  #   # params { user: {username: 'Chandler Bing', password: 'hi' } }
  #   params.require(:user).permit(:username, :password)
  #   byebug
  # end











end #<<<<<------------END OF CLASS---------------
