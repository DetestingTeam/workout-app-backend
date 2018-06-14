class Workout < ApplicationRecord
  has_many :user_histories
  has_many :workoutdetails
  has_many :movements
end
