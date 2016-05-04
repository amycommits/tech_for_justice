require 'rails_helper'

RSpec.describe "user_informations/show", type: :view do
  before(:each) do
    @user_information = assign(:user_information, UserInformation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
