class Movement < ApplicationRecord
  belongs_to :workoutdetails
  has_many :user_histories
end
