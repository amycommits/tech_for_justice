require 'rails_helper'

RSpec.describe "user_arguments/show", type: :view do
  before(:each) do
    @user_argument = assign(:user_argument, UserArgument.create!(
      :document => nil,
      :overall_reason => "Overall Reason",
      :user_change_details => "User Change Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Overall Reason/)
    expect(rendered).to match(/User Change Details/)
  end
end
