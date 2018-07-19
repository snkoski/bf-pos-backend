class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render :json { errors: @user.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @user.destroy
    # flash[:success] = "User deleted"
    render json: {}, status: :no_content
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit()
  end

  def find_user
    @user = User.find(params[:id])
  end
end
