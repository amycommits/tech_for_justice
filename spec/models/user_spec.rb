require "rails_helper"

describe User do
  let(:user) { FactoryGirl.create :user }

  context 'valid' do
    it 'requires email' do
      expect(user).to validate_presence_of :email
    end
  end

  context 'not valid'

  it { should have_many(:user_case_infos)}

  it { should have_one(:user_information) }
  it { should have_many(:user_documents) }
end

