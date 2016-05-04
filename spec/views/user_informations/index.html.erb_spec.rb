require 'rails_helper'

RSpec.describe "user_informations/index", type: :view do
  before(:each) do
    assign(:user_informations, [
      UserInformation.create!(
        :user => nil,
        :pd_id => "MyText",
        :first_name => "MyText",
        :last_name => "MyText",
        :middle_name => "MyText",
        :preefix_suffix => "MyText",
        :title => "MyText",
        :address_line_1 => "MyText",
        :address_line2 => "MyText",
        :city => "MyText",
        :state => "MyText",
        :phone_number => "MyText"
      ),
      UserInformation.create!(
        :user => nil,
        :pd_id => "MyText",
        :first_name => "MyText",
        :last_name => "MyText",
        :middle_name => "MyText",
        :preefix_suffix => "MyText",
        :title => "MyText",
        :address_line_1 => "MyText",
        :address_line2 => "MyText",
        :city => "MyText",
        :state => "MyText",
        :phone_number => "MyText"
      )
    ])
  end

  it "renders a list of user_informations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
