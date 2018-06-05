class MovementsController < ApplicationController

  def index
    movements = Movement.all
  render json: movements
  end

end
