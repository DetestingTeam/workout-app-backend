class MovementsController < ApplicationController

  def index
    movements = Movement.all
  render json: movements
  end

  def create
    movement = Movement.new(movement_params)
    if movement.save
      render json: movement, status: 201
    else
      render json: {errors: movement.errors}, status: 422
    end
  end

  private
  def movement_params
    params.require(:movement).permit(:movement_name, :movement_description, :url, :bodypart)
  end

end
