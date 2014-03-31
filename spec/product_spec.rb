require 'spec_helper'
require 'capybara/rspec'
require_relative('../app')

Capybara.app = App

feature 'User can add products to the homepage' do
  scenario 'User adds taks' do
    expect(page).to have_content("Welcome")
    click_link("Add a Product")
    fill_in"new_product", with:"T-Shirt"
    click_button("Create Product")
    expect(page).to have_content("T-Shirt")
    expect(page).to have_content("Welcome")
  end
end