class Movement < ApplicationRecord
  has_many :workoutdetails
  has_many :user_histories
end
