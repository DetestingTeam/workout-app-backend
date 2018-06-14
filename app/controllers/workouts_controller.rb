class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render json: @workouts
  end

  def create
    #debugger
    @workoutcreate = Workout.create(workout_params)
    @test = @workoutcreate.Workoutdetails.create(params[:movements])
    print @test
    # print "TEST"
    # print workdetail_params
    # print "workdetails"
    # print workout_params


    # @workoutid = 'workout_id: '+ workoutcreate.id.to_s
    # workoutdetailcreate = Workoutdetail.create(workout_params, @workoutid)
    # #workoutDetailCreate = Workoutdetail.new('workout_id: 'Workout.last.id, )

    if workoutcreate.valid?
      render json: workoutcreate.id, status: 201
    else
      render json: {errors: WorkoutsController.errors}, status: 422
    end
  end




  def workout_params
    params.require(:workout).permit(:workout_name, :workout_date, :location, :duration, :instructor, :time, :difficulty, movements:[:movement_id, :movement_name, :rec_set, :rec_rep, :rec_duration])
    # let workout_p = :workout_name, :workout_date, :location, :duration, :instructor, :time
  end
  def workdetail_params
    params.require(:workout).permit(movements:[:movement_id, :movement_name, :rec_set, :rec_rep, :rec_duration])
  end
end
