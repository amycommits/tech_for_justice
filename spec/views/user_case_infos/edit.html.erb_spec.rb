require 'rails_helper'

RSpec.describe "user_case_infos/edit", type: :view do
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

  it "renders the edit user_case_info form" do
    render

    assert_select "form[action=?][method=?]", user_case_info_path(@user_case_info), "post" do

      assert_select "input#user_case_info_user_id[name=?]", "user_case_info[user_id]"

      assert_select "textarea#user_case_info_docket_id[name=?]", "user_case_info[docket_id]"

      assert_select "textarea#user_case_info_charged_with[name=?]", "user_case_info[charged_with]"

      assert_select "textarea#user_case_info_charge_type[name=?]", "user_case_info[charge_type]"

      assert_select "textarea#user_case_info_police_description[name=?]", "user_case_info[police_description]"

      assert_select "textarea#user_case_info_case_conclusion[name=?]", "user_case_info[case_conclusion]"

      assert_select "textarea#user_case_info_is_case_pending[name=?]", "user_case_info[is_case_pending]"
    end
  end
end
