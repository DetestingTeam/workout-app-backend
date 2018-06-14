class WorkoutdetailsController < ApplicationController
  before_action :set_workoutdetail, only: [:show, :update, :destroy]

#Grab everything at once, dump it into a json paylod let the front end figure it out
  def index
    @details = Workoutdetail.includes(:movement, :workout).where(workout_id: params[:workout_id]).pluck_to_hash(:workout_name, :workout_date, :difficulty, :movement_id, :movement_name, :rec_rep, :rec_set, :rec_duration, :location, :time)
  render json: @details
  end

  def show
  end


 # Handle strong parameters, so we are secure
  def create
    #@workoutdetail = Workoutdetail.new(workoutdetail_params)

  workoutdetails = Workoutdetail.create(workoutdetails_params)
  if workoutdetails.valid?
    render json: workoutdetails
   else
     render json: workoutdetails.errors, status: :unprocessable_entity
   end
 end


  def userhistory_params
      params.require(:userh).permit(:userid, :movementid, :workoutid, :weight, :set, :rep)
  end
  # def insertHistory
  #   @userhistory = UserHistory.new
  #   @userhistory.userid = params[:userid]
  #   @userhistory.movementid = params[:movementid]
  #   @userhistory.workoutid = params[:workoutid]
  #   @userhistory.weight = params[:weight]
  #   @userhistory.set = params[:set]
  #   @userhistory.rep = params[:rep]
  #   @user.save
  #   render :confirmation
  #
  #   end

  # PATCH/PUT /workoutdetails/1
  # PATCH/PUT /workoutdetails/1.json
  def update
    if @workoutdetail.update(workoutdetail_params)
      render :show, status: :ok, location: @workoutdetail
    else
      render json: @workoutdetail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workoutdetails/1
  # DELETE /workoutdetails/1.json
  def destroy
    @workoutdetail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workoutdetail
      @workoutdetail = Workoutdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workoutdetail_params
      params.require(:workoutdetail).permit(:setdetail, :repdetail, :durationdetail, :difficultydetail)
    end
end
