require 'rails_helper'

RSpec.describe "user_documents/index", type: :view do
  before(:each) do
    assign(:user_documents, [
      UserDocument.create!(
        :user => nil,
        :document => nil
      ),
      UserDocument.create!(
        :user => nil,
        :document => nil
      )
    ])
  end

  it "renders a list of user_documents" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
