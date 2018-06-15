class WorkoutsController < ApplicationController
  def index
    workouts = Workout.all
    render json: workouts
  end

  def create
    #debugger
    workout = Workout.new(workout_params)
    if workout.save
      render json: workout, status: 201
    else
      render json: {errors: WorkoutsController.errors}, status: 422
    end
  end



  private
  def workout_params
    params.require(:workout).permit(:workout_name, :workout_date, :location, :duration, :instructor, :time, :difficulty, workoutdetails_attributes:[:movement_name, :rec_set, :rec_rep, :rec_duration])
  end
end
