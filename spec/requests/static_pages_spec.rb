require 'spec_helper'
=begin
describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
=end 
describe "Static Pages" do
  describe "Home pages" do
    
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text =>'Sample App')
    end
    
    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end  
    
  end
  
  describe "Help" do
     
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text =>'help')
    end      
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | help")
    end
    
  end
  
  describe "About page" do
    
     it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text =>'About Us')
    end  
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
end
