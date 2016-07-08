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
    it 'displays alert' do
      expect(page).to have_selector '.alert-success', text: "Signed in successfully."
    end
  end
  context "sign in fails" do
    before do
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: 'wrong password'
      click_button 'Log in'
    end

    it 'displays alert' do
      expect(page).to have_selector '.alert-danger', text: "Invalid Email or password."
    end
  end
end
