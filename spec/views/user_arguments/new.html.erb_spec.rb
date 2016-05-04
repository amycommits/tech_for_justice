require 'rails_helper'

RSpec.describe "user_arguments/new", type: :view do
  before(:each) do
    assign(:user_argument, UserArgument.new(
      :document => nil,
      :overall_reason => "MyString",
      :user_change_details => "MyString"
    ))
  end

  it "renders new user_argument form" do
    render

    assert_select "form[action=?][method=?]", user_arguments_path, "post" do

      assert_select "input#user_argument_document_id[name=?]", "user_argument[document_id]"

      assert_select "input#user_argument_overall_reason[name=?]", "user_argument[overall_reason]"

      assert_select "input#user_argument_user_change_details[name=?]", "user_argument[user_change_details]"
    end
  end
end
