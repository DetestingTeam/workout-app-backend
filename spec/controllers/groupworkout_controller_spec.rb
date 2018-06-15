require 'rails_helper'
require 'rspec'


RSpec.describe GroupworkoutController, type: :controller do

  describe "GET #future" do
    it "returns http success" do
      post :future
      expect(response).to have_http_status(:success)
    end
  end

end
