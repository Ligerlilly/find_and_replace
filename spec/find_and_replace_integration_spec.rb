require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find and replace path', {:type => :feature}) do
  it('processes the user entry and replaces the first argument with the second argument') do
    visit('/')
    fill_in('string', :with => "I own a cat.")
    fill_in('old_word', :with => 'cat')
    fill_in('new_word', :with => 'dog')
    click_button('Send')
    save_and_open_page
    expect(page).to have_content('I own a dog.')
  end
end
