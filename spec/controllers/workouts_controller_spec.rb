require 'rails_helper'

RSpec.describe WorkoutsController, type: :controller do
  workout_params = {
    workout: {
      workout_name: 'Abs and Arms',
      difficulty: 'easy',
      duration: '1 hour',
      workout_date: 'Jun-11-2018',
      location: 'LEARN Academy',
      instructor: 'Christine B',
      time: '6am'
    }
  }
end
