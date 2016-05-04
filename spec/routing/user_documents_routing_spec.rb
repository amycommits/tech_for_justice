require "rails_helper"

RSpec.describe UserDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_documents").to route_to("user_documents#index")
    end

    it "routes to #new" do
      expect(:get => "/user_documents/new").to route_to("user_documents#new")
    end

    it "routes to #show" do
      expect(:get => "/user_documents/1").to route_to("user_documents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_documents/1/edit").to route_to("user_documents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_documents").to route_to("user_documents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_documents/1").to route_to("user_documents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_documents/1").to route_to("user_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_documents/1").to route_to("user_documents#destroy", :id => "1")
    end

  end
end
