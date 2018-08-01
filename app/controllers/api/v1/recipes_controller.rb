class Api::V1::RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update, :destroy, :get_ingredients, :get_proportions]
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe
    render json: @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render json: @recipe, status: :accepted
    else
      render json: { errors: @recipe.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @recipe.destroy
    # flash[:success] = "Recipe deleted"
    render json: {}, status: :no_content
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.save
      render json: @recipe, status: :accepted
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def get_ingredients
    @recipe
    render json: @recipe.ingredients
  end

  def get_proportions
    @recipe
    proportions = @recipe.ingredients.map do |i|
      i.proportions.find do |p|
        p.recipe_id == @recipe.id
      end
    end
    render json: proportions
  end

  private

  def recipe_params
    params.permit(:name, :description, :instructions, :price, :minimum_time)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
