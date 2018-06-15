require 'rails_helper'
require 'rspec'

RSpec.describe UsersController, type: :controller do

    describe "Users" do
        it 'does not raise error' do
            expect{User.create}.to_not raise_error
        end
    end

end
