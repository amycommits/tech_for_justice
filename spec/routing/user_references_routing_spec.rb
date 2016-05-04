require "rails_helper"

RSpec.describe UserReferencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_references").to route_to("user_references#index")
    end

    it "routes to #new" do
      expect(:get => "/user_references/new").to route_to("user_references#new")
    end

    it "routes to #show" do
      expect(:get => "/user_references/1").to route_to("user_references#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_references/1/edit").to route_to("user_references#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_references").to route_to("user_references#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_references/1").to route_to("user_references#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_references/1").to route_to("user_references#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_references/1").to route_to("user_references#destroy", :id => "1")
    end

  end
end
