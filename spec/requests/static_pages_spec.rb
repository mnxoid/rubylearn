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

  let(:base_title) { "Rubysite" }

  describe "Home page" do
    it "should have the content 'Mnxoid Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Mnxoid Home')
    end
    it "should have the right title" do
  	  visit '/static_pages/home'
  	  expect(page).to have_title("#{base_title} | Home")
  	end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
  	  visit '/static_pages/help'
  	  expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
  	  visit '/static_pages/about'
  	  expect(page).to have_title("#{base_title} | About")
  	end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the right title" do
  	  visit '/static_pages/contact'
  	  expect(page).to have_title("#{base_title} | Contact")
  	end
  end

end