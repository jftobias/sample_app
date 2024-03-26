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

  describe "Contact Page" do
    it "can access to contact page" do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe "StaticPages", type: :feature do
  let(:base_title) { "Ruby on Rails Tutorial Sample App |" }

  describe "Home Page" do
    it "should contains 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content("Sample App")
    end

    it "should contains the h1 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector("h1", text: "Sample App")
    end

    it "Should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title} Home")
    end
  end

  describe "Help Page" do
    it "should contains 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end

    it "should contains the h1 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_selector("h1", text: "Help")
    end

    it "Should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} Help")
    end
  end

  describe "Help Page" do
    it "should contain 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us")
    end

    it "should contain the h1 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_selector("h1", text: "About Us")
    end

    it "Should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} About Us")
    end
  end

  describe "Contact Page" do
    it "should contain 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact Us")
    end

    it "should contain the h1 'About Us'" do
      visit '/static_pages/contact'
      expect(page).to have_selector("h1", text: "Contact Us")
    end

    it "Should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} Contact Us")
    end
  end
end
