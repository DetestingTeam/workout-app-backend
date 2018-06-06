class UserHistoriesController < ApplicationController

  # def index
  #   # @user_history = UserHistory.all
  #   @user_history = UserHistory.joins(:movement).all
  #   render json: @user_history
  # end
  #
  # def show
  #     @user_history = UserHistory.all
def index

@history = UserHistory.includes(:movement, :workout).where(user_id: params[:id]).pluck_to_hash(:user_id, :workout_name, :difficulty, :workout_date, :duration, :set, :movement_id, :movement_name, :rep, :weight)
# .pluck(:movement_name,:workout_name, :rep, :user_id, :movement_id, :id, :difficulty, :workout_date)
render json: @history
end


# Handle strong parameters, so we are secure

 def create
 userhistory = UserHistory.create(userhistory_params)
 if userhistory.valid?
   render json: userhistory
  else
    render json: userhistory.errors, status: :unprocessable_entity
  end
end

 def userhistory_params
     params.require(:userhistory).permit(:user_id, :workout_id, :movement_name, :weight, :set, :movement_id, :movement, :rep)
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

end
