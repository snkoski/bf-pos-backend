class Api::V1::OrdersController < ApplicationController
  before_action :find_order, only: [:show, :update, :destroy]
  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    @order
    render json: @order
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render json: @order, status: :accepted
    else
      render json: { errors: @order.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @order.destroy
    # flash[:success] = "Order deleted"
    render json: {}, status: :no_content
  end

  def update
    @order.update(order_params)
    if @order.save
      render json: @order, status: :accepted
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def order_params
    params.permit(:customer_id, :recipe_id)
  end

  def find_order
    @order = Order.find(params[:id])
  end
  end
