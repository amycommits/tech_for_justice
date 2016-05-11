require 'rails_helper'

RSpec.describe "document_user_case_infos/index", type: :view do
  before(:each) do
    assign(:document_user_case_infos, [
      DocumentUserCaseInfo.create!(
        :user_document => nil,
        :user_case_info => nil
      ),
      DocumentUserCaseInfo.create!(
        :user_document => nil,
        :user_case_info => nil
      )
    ])
  end

  it "renders a list of document_user_case_infos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
