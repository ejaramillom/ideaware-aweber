class UsersController < ApplicationController
  def index
    users = User.order( "user_name DESC" )

    render json: users
  end

  def create
    user = User.new( user_params )
      if user.save
        render json: user, status: 201
      else
        render json: { errors: user.errors }, status: 422
      end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :phone, :sendinformationstatus)
    end
end
