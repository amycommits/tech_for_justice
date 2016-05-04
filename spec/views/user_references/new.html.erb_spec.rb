require 'rails_helper'

RSpec.describe "user_references/new", type: :view do
  before(:each) do
    assign(:user_reference, UserReference.new(
      :document => "",
      :attachment => "MyText"
    ))
  end

  it "renders new user_reference form" do
    render

    assert_select "form[action=?][method=?]", user_references_path, "post" do

      assert_select "input#user_reference_document[name=?]", "user_reference[document]"

      assert_select "textarea#user_reference_attachment[name=?]", "user_reference[attachment]"
    end
  end
end
