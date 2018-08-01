class Api::V1::IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :update, :destroy, :get_proportion]
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredient
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      render json: @ingredient, status: :accepted
    else
      render json: { errors: @ingredient.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @ingredient.destroy
    # flash[:success] = "Ingredient deleted"
    render json: {}, status: :no_content
  end

  def update
    @ingredient.update(ingredient_params)
    if @ingredient.save
      render json: @ingredient, status: :accepted
    else
      render json: { errors: @ingredient.errors.full_messages }, status: :unprocessible_entity
    end
  end

  # def get_proportion
  #   @ingredient
  #   render json: @ingredient
  # end

  private

  def ingredient_params
    params.permit(:name, :price, :amount)
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
