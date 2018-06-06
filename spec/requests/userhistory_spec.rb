require 'rails_helper'

RSpec.describe "CreateUserHistory", type: :request do
describe "POST /userhistory" do
it "creates a userhistory" do
   # The params we are going to send with the request
   userhistory_params = {
     userhistory: {
       user_id: 1,
       movement_id: 1,
       workout_id: 1,
       weight: 12,
       set: 99,
       rep: 14
     }
   }

   # Send the request to the server
   post '/user_histories', params: userhistory_params

   # Assure that we get a success back
   #expect(response).to be_success

    end
  end
end





   # RSpec.describe "Users", type: :request do
   #   describe "POST /users" do
   #     it "creates a user" do
   #       payload = {
   #         user: {
   #           first_name: 'Jill',
   #           last_name: 'Person',
   #           email: 'jill@jiller.com',
   #           password: 'secret',
   #           password_confirmation: 'secret'
   #         }
   #       }
   #
   #       post user_registration_path, params: payload
   #       expect(response).to have_http_status(201)
   #       expect(response.headers["Authorization"]).to_not be_blank
   #     end
