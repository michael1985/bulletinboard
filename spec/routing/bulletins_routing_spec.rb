require "spec_helper"

describe BulletinsController do
  describe "routing" do

    it "routes to #index" do
      get("/bulletins").should route_to("bulletins#index")
    end

    it "routes to #new" do
      get("/bulletins/new").should route_to("bulletins#new")
    end

    it "routes to #show" do
      get("/bulletins/1").should route_to("bulletins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bulletins/1/edit").should route_to("bulletins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bulletins").should route_to("bulletins#create")
    end

    it "routes to #update" do
      put("/bulletins/1").should route_to("bulletins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bulletins/1").should route_to("bulletins#destroy", :id => "1")
    end

  end
end
