require "spec_helper"

describe SkillgroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/skillgroups").should route_to("skillgroups#index")
    end

    it "routes to #new" do
      get("/skillgroups/new").should route_to("skillgroups#new")
    end

    it "routes to #show" do
      get("/skillgroups/1").should route_to("skillgroups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/skillgroups/1/edit").should route_to("skillgroups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/skillgroups").should route_to("skillgroups#create")
    end

    it "routes to #update" do
      put("/skillgroups/1").should route_to("skillgroups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/skillgroups/1").should route_to("skillgroups#destroy", :id => "1")
    end

  end
end
