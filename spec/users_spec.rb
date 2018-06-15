# require 'rails_helper'
# require 'devise/jwt/test_helpers'

RSpec.describe "Users", type: :request do
  describe "POST /users" do
    it "creates a user" do
      payload = {
        user: {
          first_name: 'Jill',
          last_name: 'Person',
          email: 'jill@jiller.com',
          password: 'secret',
          password_confirmation: 'secret'
        }
      }

      post '/users', params: payload
      expect(response).to have_http_status(201)
    end

    it "should return errors when fails to create" do
      payload = {
        user: {
          email: 'jill@jiller.com',
          password: 'secret',
          password_confirmation: 'wrong password'
        }
      }

      post '/users', params: payload
      expect(response).to have_http_status(422)
      expect(response.headers["Authorization"]).to be_blank
    end
  end
end
