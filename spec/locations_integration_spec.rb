require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the places path', {:type => :feature}) do
  it('returns places after they are submitted') do
    visit('/')
    fill_in('place', :with => 'Portland')
    click_button('Submit')
    expect(page).to have_content("Return to previous screen")


  end
end
