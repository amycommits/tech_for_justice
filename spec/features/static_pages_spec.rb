require 'rails_helper'

feature 'About page' do
  before do
    visit about_path
  end

  scenario 'displays About page' do
    expect(page).to have_css 'h2', text: 'About'
  end
end

feature 'Contact page' do
  before do
    visit contact_path
  end

  scenario 'displays Contact page' do
    expect(page).to have_css 'h2', text: 'Contact'
  end
end
