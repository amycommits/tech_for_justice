require 'rails_helper'

describe 'About page' do
  before do
    visit about_path
  end

  context 'signed in' do
    it 'displays' do
      expect(page).to have_css 'h2', text: 'About'
    end
  end

  context 'not signed in'
end
