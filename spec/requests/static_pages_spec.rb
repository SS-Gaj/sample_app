require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      # visit '/static_pages/home'
      visit root_path
      expect(page).to have_content('Sample App')
    end

    # it "should have the title 'Home'" do
    it "should have the base title" do
      # visit '/static_pages/home'
      visit root_path
      # expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      # visit '/static_pages/home'
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      # visit '/static_pages/help'
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      # visit '/static_pages/help'
      visit help_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      # visit '/static_pages/about'
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      # visit '/static_pages/about'
      visit about_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe "Contact" do

    it "should have the content 'Contact'" do
      # visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      # visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end
