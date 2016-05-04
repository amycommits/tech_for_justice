require 'rails_helper'

RSpec.describe "user_documents/edit", type: :view do
  before(:each) do
    @user_document = assign(:user_document, UserDocument.create!(
      :user => nil,
      :document => nil
    ))
  end

  it "renders the edit user_document form" do
    render

    assert_select "form[action=?][method=?]", user_document_path(@user_document), "post" do

      assert_select "input#user_document_user_id[name=?]", "user_document[user_id]"

      assert_select "input#user_document_document_id[name=?]", "user_document[document_id]"
    end
  end
end
