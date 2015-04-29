require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('path for Vehicle class', {:type => :feature}) do
  before() do
    Vehicle.clear()
  end

  it('processes the user input and returns the success page') do
    visit('/')
    click_link('Add New Dealership')
    fill_in('name', :with => 'Steves Cars')
    click_button('Add Dealership')
    click_link('See Dealership List')
    click_link('Steves Cars')
    click_link('Add New Vehicle')
    fill_in('make', :with => 'Toyota')
    fill_in('model', :with => 'Prius')
    fill_in('year', :with => 2000)
    click_button('Add Vehicle')
    expect(page).to have_content('Success!')
  end

  # it('processes the user input and returns the vehicles page') do
  #   visit('/')
  #   click_link('Add New Vehicle')
  #   fill_in('make', :with => 'Toyota')
  #   fill_in('model', :with => 'Prius')
  #   fill_in('year', :with => 2000)
  #   click_button('Add Vehicle')
  #   click_link('See Vehicle List')
  #   expect(page).to have_content('Here are the vehicles on this lot:')
  # end
  # it('processes the user input and returns the vehicle page') do
  #   visit('/')
  #   click_link('Add New Vehicle')
  #   fill_in('make', :with => 'Toyota')
  #   fill_in('model', :with => 'Prius')
  #   fill_in('year', :with => 2000)
  #   click_button('Add Vehicle')
  #   click_link('See Vehicle List')
  #   click_link('Prius')
  #   expect(page).to have_content('Toyota')
  #   expect(page).to have_content('Prius')
  # end

end
