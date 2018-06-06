require "rails_helper"

RSpec.describe WorkoutdetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workoutdetails").to route_to("workoutdetails#index")
    end


    it "routes to #show" do
      expect(:get => "/workoutdetails/1").to route_to("workoutdetails#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/workoutdetails").to route_to("workoutdetails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workoutdetails/1").to route_to("workoutdetails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workoutdetails/1").to route_to("workoutdetails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workoutdetails/1").to route_to("workoutdetails#destroy", :id => "1")
    end

  end
end
