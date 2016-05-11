require 'rails_helper'

RSpec.describe "document_user_case_infos/new", type: :view do
  before(:each) do
    assign(:document_user_case_info, DocumentUserCaseInfo.new(
      :user_document => nil,
      :user_case_info => nil
    ))
  end

  it "renders new document_user_case_info form" do
    render

    assert_select "form[action=?][method=?]", document_user_case_infos_path, "post" do

      assert_select "input#document_user_case_info_user_document_id[name=?]", "document_user_case_info[user_document_id]"

      assert_select "input#document_user_case_info_user_case_info_id[name=?]", "document_user_case_info[user_case_info_id]"
    end
  end
end
