class Workout < ApplicationRecord
  has_and_belongs_to_many :movements
  belongs_to :schedule
end
