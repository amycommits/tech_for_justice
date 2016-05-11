require 'rails_helper'

RSpec.describe "document_user_case_infos/show", type: :view do
  before(:each) do
    @document_user_case_info = assign(:document_user_case_info, DocumentUserCaseInfo.create!(
      :user_document => nil,
      :user_case_info => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
