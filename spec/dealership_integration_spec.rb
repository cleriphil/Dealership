require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the path of dealership', {:type => :feature}) do
  before() do
    Dealership.clear()
  end

  it('processes the user input and directs user to dealerships page') do
  visit('/')
  click_link('Add New Dealership')
  fill_in('name', :with => 'Steves Cars')
  click_button('Add Dealership')
  expect(page).to have_content('Success!')
  end

  it('processes the user input and directs user to dealership page') do
  visit('/')
  click_link('Add New Dealership')
  fill_in('name', :with => 'Steves Cars')
  click_button('Add Dealership')
  click_link('See Dealership List')
  click_link('Steves Cars')
  end
end
