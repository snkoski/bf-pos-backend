class Api::V1::ReservationsController < ApplicationController
  before_action :find_reservation, only: [:show, :update, :destroy]
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  def show
    @reservation
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation, status: :accepted
    else
      render json: { errors: @reservation.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @reservation.destroy
    # flash[:success] = "Reservation deleted"
    render json: {}, status: :no_content
  end

  def update
    @reservation.update(reservation_params)
    if @reservation.save
      render json: @reservation, status: :accepted
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def reservation_params
    params.permit(:guest_name, :number_of_guests, :date, :time, :table_number, :special_requests, :cancelled, :seated)
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end
end
