class Api::V1::MenusController < ApplicationController
  before_action :find_menu, only: [:show, :update, :destroy]
  def index
    @menus = Menu.all
    render json: @menus
  end

  def show
    @menu
    render json: @menu
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      render json: @menu, status: :accepted
    else
      render json: { errors: @menu.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @menu.destroy
    # flash[:success] = "Menu deleted"
    render json: {}, status: :no_content
  end

  def update
    @menu.update(menu_params)
    if @menu.save
      render json: @menu, status: :accepted
    else
      render json: { errors: @menu.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def menu_params
    params.permit()
  end

  def find_menu
    @menu = Menu.find(params[:id])
  end
end
