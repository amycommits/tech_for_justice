require 'rails_helper'

describe 'Contact page' do
  before do
    visit contact_path
  end

  context 'signed in' do
    it 'displays' do
      expect(page).to have_css 'h2', 'Contact'
    end
  end

  context 'not signed in'
end