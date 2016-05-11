require 'rails_helper'

RSpec.describe "DocumentUserCaseInfos", type: :request do
  describe "GET /document_user_case_infos" do
    it "works! (now write some real specs)" do
      get document_user_case_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
