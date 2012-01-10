class PagesController < ApplicationController
  
  def home
    @title = "homebase"
  end
  
  def about
    @title = "about"
  end
  
  def info
    @title = "info"
  end
  
  def thoughts
    @title = "thoughts"
  end
  
  def resume
    @title = "resume"
  end
end
