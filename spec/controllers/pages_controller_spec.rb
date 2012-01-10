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
      response.should have_selector("title", :content => "John Pearson - homebase")
    end
    
    it "should have sidebar image" do
      response.should have_selector("img")
    end
    
    it "should have the link images" do
      response.should have_selector("a", :href => blog_path)
      response.should have_selector("a", :href => about_path)
      response.should have_selector("a", :href => info_path)
      response.should have_selector("a", :href => thoughts_path)
      response.should have_selector("a", :href => resume_path)
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
      response.should have_selector("title", :content => "John Pearson - about")
    end
  end
  
  describe "GET 'info' page" do
    
    before(:each) do
      get :info
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "John Pearson - info")
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
      response.should have_selector("title", :content => "John Pearson - thoughts")
    end
  end
  
  describe "GET 'resume' page" do
    
    before(:each) do
      get :resume
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the right title" do
      response.should have_selector("title", :content => "John Pearson - resume")
    end
  end
end
