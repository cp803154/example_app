require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Example App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text =>'Example App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Example App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Example App | Help")
    end
  end

  describe "A propos page" do
    it "should have the h1 'A propos'" do
      visit '/static_pages/a_propos'
      page.should have_selector('h1', :text => 'A propos')
    end

    it "should have the title 'About'" do
      visit '/static_pages/a_propos'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Example App | About")
    end
  end
end
