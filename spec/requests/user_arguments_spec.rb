require 'rails_helper'

RSpec.describe "UserArguments", type: :request do
  describe "GET /user_arguments" do
    it "works! (now write some real specs)" do
      get user_arguments_path
      expect(response).to have_http_status(200)
    end
  end
end
