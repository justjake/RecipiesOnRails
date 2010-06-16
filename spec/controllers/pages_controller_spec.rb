require 'spec_helper'

describe PagesController do
  integrate_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_tag("title", "Recipes on Rails | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_tag("title", "Recipes on Rails | Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be sucessful" do
      get 'about'
      response.should be_success
    end
    
    it "shpuld have the right title" do
      get 'about' 
      response.should have_tag("title", "Recipes on Rails | About")
    end
  end 
   
  describe "GET 'help'" do
    it "should be sucessful" do
      get 'help'
      response.should be_success
    end
    
    it "shpuld have the right title" do
      get 'help' 
      response.should have_tag("title", "Recipes on Rails | Help")
    end
  end 
 
end
