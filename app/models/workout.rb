class Workout < ApplicationRecord
  has_many :user_histories
  belongs_to :workoutdetails
end
