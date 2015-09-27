# require 'rails_helper'

# RSpec.describe "StaticPages", type: :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get "/static_pages/help"
#       expect(response).to have_http_status(200)
#     end
#   end
# end
require 'spec_helper'
require 'capybara/rspec'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Mnxoid home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Mnxoid home')
    end
    it "should have the right title" do
  	  visit '/static_pages/home'
  	  expect(page).to have_title('Rubysite | Home')
  	end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
  	  visit '/static_pages/help'
  	  expect(page).to have_title('Rubysite | Help')
  	end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
  	  visit '/static_pages/about'
  	  expect(page).to have_title('Rubysite | About')
  	end
  end

end