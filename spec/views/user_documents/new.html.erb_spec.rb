require 'rails_helper'

RSpec.describe "user_documents/new", type: :view do
  before(:each) do
    assign(:user_document, UserDocument.new(
      :user => nil,
      :document => nil
    ))
  end

  it "renders new user_document form" do
    render

    assert_select "form[action=?][method=?]", user_documents_path, "post" do

      assert_select "input#user_document_user_id[name=?]", "user_document[user_id]"

      assert_select "input#user_document_document_id[name=?]", "user_document[document_id]"
    end
  end
end
