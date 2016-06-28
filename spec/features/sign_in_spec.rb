require 'rails_helper'

describe 'Sign In' do
  let!(:user) { FactoryGirl.create :user }

  before do
    visit new_user_session_path
  end

  context 'signed in' do
    before do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'password'
      click_button 'Log in'
    end

    it 'displays' do
      expect(page).to have_link 'Start New Document', href: new_document_path
    end
  end
end
