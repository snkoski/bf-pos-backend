class Api::V1::UsedIngredientsController < ApplicationController
  before_action :find_used_ingredient, only: [:show, :update, :destroy]
  def index
    @used_ingredients = UsedIngredient.all
    render json: @used_ingredients
  end

  def show
    @used_ingredient
    render json: @used_ingredient
  end

  def create
    @used_ingredient = UsedIngredient.new(used_ingredient_params)
    if @used_ingredient.save
      render json: @used_ingredient, status: :accepted
    else
      render json: { errors: @used_ingredient.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @used_ingredient.destroy
    # flash[:success] = "UsedIngredient deleted"
    render json: {}, status: :no_content
  end

  def update
    @used_ingredient.update(used_ingredient_params)
    if @used_ingredient.save
      render json: @used_ingredient, status: :accepted
    else
      render json: { errors: @used_ingredient.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def used_ingredient_params
    params.permit(:name, :price, :amount, :date)
  end

  def find_used_ingredient
    @used_ingredient = UsedIngredient.find(params[:id])
  end
end
