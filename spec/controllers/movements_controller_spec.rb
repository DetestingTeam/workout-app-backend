require 'rails_helper'
require 'rspec'


RSpec.describe MovementsController, type: :controller do

    describe "Movement" do
        it 'does not raise error' do
            expect{Movement.create}.to_not raise_error
        end
    end
end
