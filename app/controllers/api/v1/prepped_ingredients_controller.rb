class Api::V1::PreppedIngredientsController < ApplicationController
  before_action :find_prepped_ingredient, only: [:show, :update, :destroy]
  def index
    @prepped_ingredients = Prepped_ingredient.all
    render json: @prepped_ingredients
  end

  def show
    @prepped_ingredient
    render json: @prepped_ingredient
  end

  def create
    @prepped_ingredient = Prepped_ingredient.new(prepped_ingredient_params)
    if @prepped_ingredient.save
      render json: @prepped_ingredient, status: :accepted
    else
      render :json { errors: @prepped_ingredient.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @prepped_ingredient.destroy
    # flash[:success] = "Prepped_ingredient deleted"
    render json: {}, status: :no_content
  end

  def update
    @prepped_ingredient.update(prepped_ingredient_params)
    if @prepped_ingredient.save
      render json: @prepped_ingredient, status: :accepted
    else
      render json: { errors: @prepped_ingredient.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def prepped_ingredient_params
    params.permit()
  end

  def find_prepped_ingredient
    @prepped_ingredient = Prepped_ingredient.find(params[:id])
  end
end
