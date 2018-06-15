require 'rails_helper'
require 'rspec'
require './app/controllers/user_histories_controller.rb'

RSpec.describe UserHistoriesController, type: :controller do

    describe "User Histories" do
        it 'does not raise error' do
            expect{UserHistory.create}.to_not raise_error
        end
    end
end
