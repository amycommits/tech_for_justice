require 'rails_helper'

RSpec.describe "user_case_infos/show", type: :view do
  before(:each) do
    @user_case_info = assign(:user_case_info, UserCaseInfo.create!(
      :user => nil,
      :docket_id => "MyText",
      :charged_with => "MyText",
      :charge_type => "MyText",
      :police_description => "MyText",
      :case_conclusion => "MyText",
      :is_case_pending => "MyText"
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
  end
end
