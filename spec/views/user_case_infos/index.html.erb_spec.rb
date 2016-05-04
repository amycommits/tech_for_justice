require 'rails_helper'

RSpec.describe "user_case_infos/index", type: :view do
  before(:each) do
    assign(:user_case_infos, [
      UserCaseInfo.create!(
        :user => nil,
        :docket_id => "MyText",
        :charged_with => "MyText",
        :charge_type => "MyText",
        :police_description => "MyText",
        :case_conclusion => "MyText",
        :is_case_pending => "MyText"
      ),
      UserCaseInfo.create!(
        :user => nil,
        :docket_id => "MyText",
        :charged_with => "MyText",
        :charge_type => "MyText",
        :police_description => "MyText",
        :case_conclusion => "MyText",
        :is_case_pending => "MyText"
      )
    ])
  end

  it "renders a list of user_case_infos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
