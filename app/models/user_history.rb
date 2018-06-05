class UserHistory < ApplicationRecord
  belongs_to :movement
  belongs_to :workout
  belongs_to :user
end
