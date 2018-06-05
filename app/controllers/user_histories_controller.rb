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

@history = UserHistory.includes(:movement, :workout).where(user_id: params[:id]).pluck_to_hash(:movement_name,:workout_name, :rep, :user_id, :movement_id, :id, :difficulty, :workout_date, :duration)
# .pluck(:movement_name,:workout_name, :rep, :user_id, :movement_id, :id, :difficulty, :workout_date)
render json: @history
end

end
