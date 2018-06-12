require 'rails_helper'

RSpec.describe GroupworkoutController, type: :controller do

  describe "GET #future" do
    it "returns http success" do
      post :future
      expect(response).to have_http_status(:success)
    end
  end

end
