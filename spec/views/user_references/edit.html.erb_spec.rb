require 'rails_helper'

RSpec.describe "user_references/edit", type: :view do
  before(:each) do
    @user_reference = assign(:user_reference, UserReference.create!(
      :document => "",
      :attachment => "MyText"
    ))
  end

  it "renders the edit user_reference form" do
    render

    assert_select "form[action=?][method=?]", user_reference_path(@user_reference), "post" do

      assert_select "input#user_reference_document[name=?]", "user_reference[document]"

      assert_select "textarea#user_reference_attachment[name=?]", "user_reference[attachment]"
    end
  end
end
