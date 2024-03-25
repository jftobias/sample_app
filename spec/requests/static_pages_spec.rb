require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home Page" do
    it "can access to home page" do
      get static_pages_home_path
      expect(response).to have_http_status(200)
    end
  end

  describe "Help Page" do
    it "can access to help page" do
      get static_pages_help_path
      expect(response).to have_http_status(200)
    end
  end

  describe "About Us Page" do
    it "can access to about us page" do
      get static_pages_about_path
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe "StaticPages", type: :feature do
  describe "Home Page" do
    it "should contains 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content("Sample App")
    end
  end

  describe "Help Page" do
    it "should contains 'Sample App'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end
  end

  describe "Help Page" do
    it "should contains 'Sample App'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
    end
  end
end
