require 'rails_helper'

RSpec.describe "user_informations/edit", type: :view do
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

  it "renders the edit user_information form" do
    render

    assert_select "form[action=?][method=?]", user_information_path(@user_information), "post" do

      assert_select "input#user_information_user_id[name=?]", "user_information[user_id]"

      assert_select "textarea#user_information_pd_id[name=?]", "user_information[pd_id]"

      assert_select "textarea#user_information_first_name[name=?]", "user_information[first_name]"

      assert_select "textarea#user_information_last_name[name=?]", "user_information[last_name]"

      assert_select "textarea#user_information_middle_name[name=?]", "user_information[middle_name]"

      assert_select "textarea#user_information_preefix_suffix[name=?]", "user_information[preefix_suffix]"

      assert_select "textarea#user_information_title[name=?]", "user_information[title]"

      assert_select "textarea#user_information_address_line_1[name=?]", "user_information[address_line_1]"

      assert_select "textarea#user_information_address_line2[name=?]", "user_information[address_line2]"

      assert_select "textarea#user_information_city[name=?]", "user_information[city]"

      assert_select "textarea#user_information_state[name=?]", "user_information[state]"

      assert_select "textarea#user_information_phone_number[name=?]", "user_information[phone_number]"
    end
  end
end
