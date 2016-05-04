require 'rails_helper'

RSpec.describe "UserCaseInfos", type: :request do
  describe "GET /user_case_infos" do
    it "works! (now write some real specs)" do
      get user_case_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
