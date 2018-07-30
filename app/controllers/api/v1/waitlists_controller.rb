class Api::V1::WaitlistsController < ApplicationController
  before_action :find_waitlist, only: [:show, :update, :destroy]
  def index
    @waitlists = Waitlist.all
    render json: @waitlists
  end

  def show
    @waitlist
    render json: @waitlist
  end

  def create
    @waitlist = Waitlist.new(waitlist_params)
    if @waitlist.save
      render json: @waitlist, status: :accepted
    else
      render json: { errors: @waitlist.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @waitlist.destroy
    # flash[:success] = "Waitlist deleted"
    render json: {}, status: :no_content
  end

  def update
    @waitlist.update(waitlist_params)
    if @waitlist.save
      render json: @waitlist, status: :accepted
    else
      render json: { errors: @waitlist.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def waitlist_params
    params.permit(:guest_name, :phone_number, :number_of_guests, :date, :start_waitlist, :cancelled, :end_waitlist)
  end

  def find_waitlist
    @waitlist = Waitlist.find(params[:id])
  end
end
