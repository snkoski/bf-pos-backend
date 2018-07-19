class Api::V1::CustomersController < ApplicationController
  before_action :find_customer, only: [:show, :update, :destroy]
  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    @customer
    render json: @customer
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: @customer, status: :accepted
    else
      render json: { errors: @customer.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @customer.destroy
    # flash[:success] = "Customer deleted"
    render json: {}, status: :no_content
  end

  def update
    @customer.update(customer_params)
    if @customer.save
      render json: @customer, status: :accepted
    else
      render json: { errors: @customer.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def customer_params
    params.permit()
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end
