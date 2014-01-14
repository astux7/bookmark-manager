require 'spec_helper'

feature "User browses the list of links" do

  before(:each) {
    Link.create(:url => "http://www.makersacademy.com",
                :title => "Makers Academy")
  }

  scenario "when opening the home page" do
    visit '/'
    expect(page).to have_content("Makers Academy")
  end
end

feature "Ajax forms in List page" do
	scenario "from the homepage using an ajax form", :js => true do
	  visit '/'
	  click_link "Add link"
	  add_link("http://www.example.com/", "Example")
	  expect(page).to have_content('Example')
	  expect(current_path).to eq('/') # we're still on the frontpage
	end
end