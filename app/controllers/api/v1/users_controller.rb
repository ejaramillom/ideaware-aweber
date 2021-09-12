class Api::V1::UsersController < ApplicationController
  before_action :set_user

  def show
    user = User.find(params[:id])
    render json: user
  end

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

    def set_user
      @user = User.find(params[:id])
    end
end
