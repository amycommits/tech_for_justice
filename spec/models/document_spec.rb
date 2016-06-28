require "rails_helper"

RSpec.describe Document, type: :model do
  let(:document) { FactoryGirl.create :document }

  context 'valid' do
    it 'should have name be present' do
      expect(document).to validate_presence_of :name
    end

    it 'should have document name field to return text' do
      expect(document.name).to eq('MyString')
    end
  end
end
