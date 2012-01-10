MyApp::Application.routes.draw do
  root :to => "pages#home"
  
  get "/about"    => "pages#about"
  get "/links"    => "pages#links"
  get "/websites" => "pages#websites"
  get "/thoughts" => "pages#thoughts"
  get "/contact"  => "pages#contact"
end
