require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home' page" do
    
    before(:each) do
      get :home
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "The Road to Code - homebase")
    end
    
    it "should have sidebar image" do
      response.should have_selector("img")
    end
    
    it "should have the link images" do
      response.should have_selector("a", :href => root_path)
      response.should have_selector("a", :href => about_path)
      response.should have_selector("a", :href => contact_path)
      response.should have_selector("a", :href => links_path)
      response.should have_selector("a", :href => thoughts_path)
      response.should have_selector("a", :href => websites_path)
    end
  end
  
  describe "GET 'about' page" do
    
    before(:each) do
      get :about
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "The Road to Code - about")
    end
  end
  
  describe "GET 'links' page" do
    
    before(:each) do
      get :links
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "The Road to Code - links")
    end
  end
  
  describe "GET 'thoughts' page" do
    
    before(:each) do
      get :thoughts
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "The Road to Code - thoughts")
    end
  end
  
  describe "GET 'websites' page" do
    
    before(:each) do
      get :websites
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "The Road to Code - websites")
    end
  end
end
