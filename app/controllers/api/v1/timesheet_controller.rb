class Api::V1::TimesheetController < ApplicationController
  before_action :find_timesheet, only: [:show, :update, :destroy]
  def index
    @timesheets = Timesheet.all
    render json: @timesheets
  end

  def show
    @timesheet
    render json: @timesheet
  end

  def create
    @timesheet = Timesheet.new(timesheet_params)
    if @timesheet.save
      render json: @timesheet, status: :accepted
    else
      render json: { errors: @timesheet.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @timesheet.destroy
    # flash[:success] = "Timesheet deleted"
    render json: {}, status: :no_content
  end

  def update
    @timesheet.update(timesheet_params)
    if @timesheet.save
      render json: @timesheet, status: :accepted
    else
      render json: { errors: @timesheet.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def timesheet_params
    params.permit()
  end

  def find_timesheet
    @timesheet = Timesheet.find(params[:id])
  end
end
