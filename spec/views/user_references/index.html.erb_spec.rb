require 'rails_helper'

RSpec.describe "user_references/index", type: :view do
  before(:each) do
    assign(:user_references, [
      UserReference.create!(
        :document => "",
        :attachment => "MyText"
      ),
      UserReference.create!(
        :document => "",
        :attachment => "MyText"
      )
    ])
  end

  it "renders a list of user_references" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
