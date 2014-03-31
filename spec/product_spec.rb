require 'spec_helper'
require 'capybara/rspec'
require_relative('../app')

Capybara.app = App

feature 'User can add products to the homepage' do
  scenario 'User sees welcome on the page' do
    expect(page).to have_content("Welcome")
  end
end