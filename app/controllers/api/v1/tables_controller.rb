class Api::V1::TablesController < ApplicationController
  before_action :find_table, only: [:show, :update, :destroy]
  def index

    # @tables = Trip.where([:occupied] false)

    @tables = Table.all

    render json: @tables
  end

  def show
    @table
    render json: @table
  end

  def create
    @table = Table.new(table_params)
    if @table.save
      render json: @table, status: :accepted
    else
      render json: { errors: @table.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @table.destroy
    # flash[:success] = "Table deleted"
    render json: {}, status: :no_content
  end

  def update
    @table.update(table_params)
    if @table.save
      render json: @table, status: :accepted
    else
      render json: { errors: @table.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def table_params
    params.permit(:table_number, :occupied, :user_id)
  end

  def find_table
    @table = Table.find(params[:id])
  end
end
