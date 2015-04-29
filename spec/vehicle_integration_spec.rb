require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('path for Vehicle class', {:type => :feature}) do
  it('processes the user input and returns the success page') do
    visit('/')
    click_link('Add New Vehicle')
    fill_in('make', :with => 'Toyota')
    fill_in('model', :with => 'Prius')
    fill_in('year', :with => 2000)
    click_button('Add Vehicle')
    expect(page).to have_content('Success!')
  end
  it('processes the user input and returns the vehicles page') do
    visit('/')
    click_link('Add New Vehicle')
    fill_in('make', :with => 'Toyota')
    fill_in('model', :with => 'Prius')
    fill_in('year', :with => 2000)
    click_button('Add Vehicle')
    click_link('See Vehicle List')
    expect(page).to have_content('Here are the vehicles on this lot:')
  end

end
