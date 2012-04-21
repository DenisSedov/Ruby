require "spec_helper"

describe ContactinformationsController do
  describe "routing" do

    it "routes to #index" do
      get("/contactinformations").should route_to("contactinformations#index")
    end

    it "routes to #new" do
      get("/contactinformations/new").should route_to("contactinformations#new")
    end

    it "routes to #show" do
      get("/contactinformations/1").should route_to("contactinformations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contactinformations/1/edit").should route_to("contactinformations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contactinformations").should route_to("contactinformations#create")
    end

    it "routes to #update" do
      put("/contactinformations/1").should route_to("contactinformations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contactinformations/1").should route_to("contactinformations#destroy", :id => "1")
    end

  end
end
