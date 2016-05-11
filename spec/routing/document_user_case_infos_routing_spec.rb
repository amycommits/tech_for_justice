require "rails_helper"

RSpec.describe DocumentUserCaseInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/document_user_case_infos").to route_to("document_user_case_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/document_user_case_infos/new").to route_to("document_user_case_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/document_user_case_infos/1").to route_to("document_user_case_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/document_user_case_infos/1/edit").to route_to("document_user_case_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/document_user_case_infos").to route_to("document_user_case_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/document_user_case_infos/1").to route_to("document_user_case_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/document_user_case_infos/1").to route_to("document_user_case_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/document_user_case_infos/1").to route_to("document_user_case_infos#destroy", :id => "1")
    end

  end
end
