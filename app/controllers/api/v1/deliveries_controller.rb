class Api::V1::DeliveriesController < ApplicationController
  before_action :find_delivery, only: [:show, :update, :destroy]
  def index
    @deliverys = Delivery.all
    render json: @deliverys
  end

  def show
    @delivery
    render json: @delivery
  end

  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      render json: @delivery, status: :accepted
    else
      render json: { errors: @delivery.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @delivery.destroy
    # flash[:success] = "Delivery deleted"
    render json: {}, status: :no_content
  end

  def update
    @delivery.update(delivery_params)
    if @delivery.save
      render json: @delivery, status: :accepted
    else
      render json: { errors: @delivery.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def delivery_params
    params.permit()
  end

  def find_delivery
    @delivery = Delivery.find(params[:id])
  end
end
