class Api::V1::IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :update, :destroy]
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

  private

  def ingredient_params
    params.permit()
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
