class UserHistoriesController < ApplicationController


  #
  # def show
  #     @user_history = UserHistory.all
def index

@history = UserHistory.includes(:movement, :workout, :user).where(user_id: params[:id]).pluck_to_hash(:user_id, :first_name, :last_name, :workout_name, :difficulty, :workout_date, :duration, :set, :movement_id, :movement_name, :rep, :weight, :created_at)
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


end
