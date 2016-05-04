require "rails_helper"

RSpec.describe UserArgumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_arguments").to route_to("user_arguments#index")
    end

    it "routes to #new" do
      expect(:get => "/user_arguments/new").to route_to("user_arguments#new")
    end

    it "routes to #show" do
      expect(:get => "/user_arguments/1").to route_to("user_arguments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_arguments/1/edit").to route_to("user_arguments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_arguments").to route_to("user_arguments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_arguments/1").to route_to("user_arguments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_arguments/1").to route_to("user_arguments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_arguments/1").to route_to("user_arguments#destroy", :id => "1")
    end

  end
end
