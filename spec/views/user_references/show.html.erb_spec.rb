require 'rails_helper'

RSpec.describe "user_references/show", type: :view do
  before(:each) do
    @user_reference = assign(:user_reference, UserReference.create!(
      :document => "",
      :attachment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
