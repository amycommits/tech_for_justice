require 'rails_helper'

RSpec.describe "user_arguments/index", type: :view do
  before(:each) do
    assign(:user_arguments, [
      UserArgument.create!(
        :document => nil,
        :overall_reason => "Overall Reason",
        :user_change_details => "User Change Details"
      ),
      UserArgument.create!(
        :document => nil,
        :overall_reason => "Overall Reason",
        :user_change_details => "User Change Details"
      )
    ])
  end

  it "renders a list of user_arguments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Overall Reason".to_s, :count => 2
    assert_select "tr>td", :text => "User Change Details".to_s, :count => 2
  end
end
