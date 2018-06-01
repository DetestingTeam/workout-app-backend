class UserHistoriesController < ApplicationController
  def index
    # @user_history = UserHistory.all
    @user_history = UserHistory.joins(:movements).all
    render json: @user_history
  end
  # 
  # def show
  #     @user_history = UserHistory.all
  # end


end
