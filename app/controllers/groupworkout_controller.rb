class GroupworkoutController < ApplicationController

  def future
    @future = Workout.next_year(field: :workout_date).pluck_to_hash(:workout_name, :workout_date, :time, :location, :instructor)
  render json: @future
  end
end
