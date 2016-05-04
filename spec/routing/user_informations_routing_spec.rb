require "rails_helper"

RSpec.describe UserInformationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_informations").to route_to("user_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/user_informations/new").to route_to("user_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/user_informations/1").to route_to("user_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_informations/1/edit").to route_to("user_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_informations").to route_to("user_informations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_informations/1").to route_to("user_informations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_informations/1").to route_to("user_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_informations/1").to route_to("user_informations#destroy", :id => "1")
    end

  end
end
