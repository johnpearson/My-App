module ApplicationHelper
  # Sets base title
   def title
     base_title = "The Road to Code"
     if @title.nil?
       base_title
     else
       "#{base_title} - #{@title}"
     end
   end

   # Link buttons
   def home_button
     home_button = image_tag("home_link.png", :alt => "Home")
   end
   def links_button
     links_button = image_tag("links.png", :alt => "Links")
   end
   def about_button
     about_button = image_tag("about_link.png", :alt => "About Me")
   end
   def websites_button
     websites_button = image_tag("websites_link.png", :alt => "Websites")
   end
   def thoughts_button 
     thoughts_button = image_tag("thoughts_link.png", :alt => "Thoughts")
   end
   def contact_button
     contact_button = image_tag("contact_link.png", :alt => "Contact")
   end
end