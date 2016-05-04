require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :name => "MyText"
      ),
      Document.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
