require 'rails_helper'

RSpec.describe "user_documents/show", type: :view do
  before(:each) do
    @user_document = assign(:user_document, UserDocument.create!(
      :user => nil,
      :document => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
