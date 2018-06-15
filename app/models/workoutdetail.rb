class Workoutdetail < ApplicationRecord
  belongs_to :movement
  belongs_to :workout

  def movement_name=(value)
    self.movement = Movement.where(movement_name: value).first_or_create
  end

  def movement_name
    self.movement&.movement_name
  end

end
