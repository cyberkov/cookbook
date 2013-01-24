require "spec_helper"

describe LunchplansController do
  describe "routing" do

    it "routes to #index" do
      get("/lunchplans").should route_to("lunchplans#index")
    end

    it "routes to #new" do
      get("/lunchplans/new").should route_to("lunchplans#new")
    end

    it "routes to #show" do
      get("/lunchplans/1").should route_to("lunchplans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lunchplans/1/edit").should route_to("lunchplans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lunchplans").should route_to("lunchplans#create")
    end

    it "routes to #update" do
      put("/lunchplans/1").should route_to("lunchplans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lunchplans/1").should route_to("lunchplans#destroy", :id => "1")
    end

  end
end
