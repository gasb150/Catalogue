require 'rails_helper'

RSpec.describe 'create new article with info', type: :feature do
  @category = Category.create(name: 'Food')

  before(:each) do
    visit new_user_registration_path
    fill_in 'Username', with: 'gustavo'
    fill_in 'Email', with: 'gustavo@email.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
  end
  scenario 'Create product with complete information' do
    visit new_product_path
    fill_in 'Name', with: 'test-title'
    fill_in 'Description', with: 'test-text'
    fill_in 'Price', with: '1231312'
    fill_in 'Iva', with: '10'
    click_on 'Create product'
    expect(page).to have_content('Product was successfully created.')
  end

  scenario 'Create product without description information' do
    visit new_product_path
    fill_in 'Name', with: 'test-title'
    fill_in 'Description', with: ''
    fill_in 'Price', with: '1231312'
    fill_in 'Iva', with: '10'
    click_on 'Create product'
    expect(page).to have_content("Description can't be blank")
  end
  scenario 'Create article without name information' do
    visit new_product_path
    fill_in 'Name', with: ''
    fill_in 'Description', with: 'test-text'
    fill_in 'Price', with: '1231312'
    fill_in 'Iva', with: '10'
    click_on 'Create product'
    expect(page).to have_content("Name can't be blank")
  end
  scenario 'Create article without price information' do
      visit new_product_path
      fill_in 'Name', with: 'test-title'
      fill_in 'Description', with: 'test-text'
      fill_in 'Price', with: ''
      fill_in 'Iva', with: '10'
      click_on 'Create product'
      expect(page).to have_content("Price can't be blank")
    end
    scenario 'Create product without iva information' do
      visit new_product_path
      fill_in 'Name', with: 'test-title'
      fill_in 'Description', with: 'test-text'
      fill_in 'Price', with: '1231312'
      fill_in 'Iva', with: '10'
      click_on 'Create product'
      expect(page).to have_content('Product was successfully created.')
    end
end
RSpec.describe 'create new article without user', type: :feature do
  scenario 'Create article with unvalid user' do
    visit new_user_registration_path
    fill_in 'Username', with: 'gustavo'
    fill_in 'Email', with: 'gusstavo@email.com'
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: '123456'
    click_on 'Sign up'
    visit new_product_path
    expect(page).to have_content('Welcome')
  end
end
