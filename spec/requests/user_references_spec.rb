require 'rails_helper'

RSpec.describe "UserReferences", type: :request do
  describe "GET /user_references" do
    it "works! (now write some real specs)" do
      get user_references_path
      expect(response).to have_http_status(200)
    end
  end
end
