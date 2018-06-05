# require 'rails_helper'
# require 'devise/jwt/test_helpers'

RSpec.describe 'POST /sign_in', type: :request do
  let!(:user){ User.create(first_name:"Deiter", last_name:"TheHof", email:"dhof01@gmail.com", password:"Test123") }


  context 'when params are correct' do

    it 'returns 201' do
      payload={
        user: {
          email: "dhof01@gmail.com",
          password: "Test123"
        }
      }

      post user_session_path, params: payload
      expect(response).to have_http_status(201)
    end

    it 'returns JWT token in authorization header' do
      payload={
        user: {
          email: "dhof01@gmail.com",
          password: "Test123"
        }
      }
      post user_session_path, params: payload
      expect(response.headers['Authorization']).to be_present
    end

  #   it 'returns valid JWT token' do
  #     payload={
  #       user: {
  #         email: "dhof01@gmail.com",
  #         password: "Test123"
  #       }
  #     }
  #     byebug
  #     post user_session_path, params: payload
  #     decoded_token = decoded_jwt_token_from_response(response)
  #     expect(decoded_token.first['sub']).to be_present
  #   end
   end

  context 'when login params are incorrect' do
    before { post user_session_path }

    it 'returns unathorized status' do
      expect(response.status).to eq 401
    end
  end
end

RSpec.describe 'DELETE /sign_out', type: :request do

  it 'returns 204, no content' do
    delete '/users/sign_out'
    expect(response).to have_http_status(204)
  end
end
