class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

    def create

      user = User.find_by(username: params[:username])
      #User#authenticate comes from BCrypt
      if user && user.authenticate(params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ user_id: user.id })
        render json: { user: user, jwt: token }, status: :accepted
      else
        render json: { errors: 'Invalid username or password' }, status: :unauthorized
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
    #










end #<<<<<------------END OF CLASS---------------
