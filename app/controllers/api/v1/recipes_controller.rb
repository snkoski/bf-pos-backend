class Api::V1::RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update, :destroy]
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
      render :json { errors: @recipe.errors.full_message }, status: :unprocessible_entity
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

  private

  def recipe_params
    params.permit()
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
