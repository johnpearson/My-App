MyApp::Application.routes.draw do
  devise_for :users

  root :to => "pages#home"
  
  get "/about"    => "pages#about"
  get "/links"    => "pages#links"
  get "/websites" => "pages#websites"
  get "/thoughts" => "pages#thoughts"
  get "/contact"  => "pages#contact"
end
