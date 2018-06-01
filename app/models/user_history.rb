class UserHistory < ApplicationRecord
  belongs_to :movement
  has_many :workouts
  has_many :users
end
