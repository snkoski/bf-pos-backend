class Api::V1::StaticTablesController < ApplicationController
  before_action :find_static_table, only: [:show, :update, :destroy]
  def index
    @static_tables = StaticTable.all
    render json: @static_tables
  end

  def show
    @static_table
    render json: @static_table
  end

  def create
    @static_table = StaticTable.new(static_table_params)
    if @static_table.save
      render json: @static_table, status: :accepted
    else
      render json: { errors: @static_table.errors.full_message }, status: :unprocessible_entity
    end
  end

  def destroy
    @static_table.destroy
    # flash[:success] = "StaticTable deleted"
    render json: {}, status: :no_content
  end

  def update
    @static_table.update(static_table_params)
    if @static_table.save
      render json: @static_table, status: :accepted
    else
      render json: { errors: @static_table.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def static_table_params
    params.permit(:occupied)
  end

  def find_static_table
    @static_table = StaticTable.find(params[:id])
  end
end
