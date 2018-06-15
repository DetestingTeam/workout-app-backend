require 'rails_helper'
require 'rspec'
require './app/controllers/schedules_controller.rb'

RSpec.describe SchedulesController, type: :controller do

    describe "Schedules" do
        it 'does not raise error' do
            expect{Schedule.create}.to_not raise_error
        end
    end
end
