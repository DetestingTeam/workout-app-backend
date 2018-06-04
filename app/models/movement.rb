class Movement < ApplicationRecord
  has_and_belongs_to_many :workouts
  has_many :user_histories
end
