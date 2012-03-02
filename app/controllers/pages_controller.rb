class PagesController < ApplicationController
  
  def home
    @title = "homebase"
  end
  
  def about
    @title = "about"
  end
  
  def links
    @title = "links"
  end
  
  def thoughts
    @title = "thoughts"
  end
  
  def websites
    @title = "websites"
  end
end
