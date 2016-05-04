require 'rails_helper'

RSpec.describe "user_arguments/edit", type: :view do
  before(:each) do
    @user_argument = assign(:user_argument, UserArgument.create!(
      :document => nil,
      :overall_reason => "MyString",
      :user_change_details => "MyString"
    ))
  end

  it "renders the edit user_argument form" do
    render

    assert_select "form[action=?][method=?]", user_argument_path(@user_argument), "post" do

      assert_select "input#user_argument_document_id[name=?]", "user_argument[document_id]"

      assert_select "input#user_argument_overall_reason[name=?]", "user_argument[overall_reason]"

      assert_select "input#user_argument_user_change_details[name=?]", "user_argument[user_change_details]"
    end
  end
end
