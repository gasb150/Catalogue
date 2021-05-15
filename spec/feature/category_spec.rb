require 'rails_helper'

RSpec.describe 'Display category page', type: :feature do
  before(:each) do
    visit new_user_registration_path
    fill_in 'Username', with: 'gustavo'
    fill_in 'Email', with: 'gustavo@email.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
    visit new_category_path
    fill_in 'Name', with: 'test-name'
    click_on 'Create category'
  end
  scenario 'Category created' do
    expect(page).to have_content('Category was successfully created.')
  end
  scenario 'Title category displayed' do
    expect(page).to have_content('test-name')
  end
end
