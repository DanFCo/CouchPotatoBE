class Api::V1::UsersController < ApplicationController


skip_before_action :authorized, only: [:create]


  def profile
    render json: { user: current_user }, status: :accepted
  end


  def create
    user = User.create(user_params)

    if user.valid?
      token = encode_token(user_id: user.id)
      render json: {user: user, jwt: token}, status: :created
    else
      render json: {errors: "Username Is Already Taken, Please Try Again"}, status: :not_acceptable
    end
  end








private


def user_params
  params.require(:user).permit(:username, :password, :avatar)
end


end ###<<<---------------END OF CLASS--------------------------->>
