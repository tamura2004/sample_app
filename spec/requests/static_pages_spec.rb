require 'rails_helper'

RSpec.describe "Static Pages", type: :request do

  let(:base_title){"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "shoud have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content("Sample App")
    end

    it "shoud have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "shoud not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end

  end

  describe "Help page" do

    it "shoud have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end

    it "shoud have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end

  end

  describe "About page" do

    it "shoud have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About")
    end

    it "shoud have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
    end

  end

end
