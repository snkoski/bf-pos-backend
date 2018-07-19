class Api::V1::SeatsController < ApplicationController
  before_action :find_seat, only: [:show, :update, :destroy]
  def index
    @seats = Seat.all
    render json: @seats
  end

  def show
    @seat
    render json: @seat
  end

  def create
    @seat = Seat.new(seat_params)
    if @seat.save
      render json: @seat, status: :accepted
    else
      render json: { errors: @seat.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @seat.destroy
    # flash[:success] = "Seat deleted"
    render json: {}, status: :no_content
  end

  def update
    @seat.update(seat_params)
    if @seat.save
      render json: @seat, status: :accepted
    else
      render json: { errors: @seat.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def seat_params
    params.permit()
  end

  def find_seat
    @seat = Seat.find(params[:id])
  end
end
