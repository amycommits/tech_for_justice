require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      :name => "MyText"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "textarea#document_name[name=?]", "document[name]"
    end
  end
end
