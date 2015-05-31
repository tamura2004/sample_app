require 'rails_helper'

RSpec.describe "Static Pages", type: :request do

  describe "Home page" do

    it "shoud have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content("Home")
    end

    it "shoud have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "Help page" do

    it "shoud have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end

    it "shoud have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end

  end

  describe "About page" do

    it "shoud have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end

    it "shoud have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
    end

  end

end
