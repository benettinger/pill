Pill::Application.routes.draw do
  resources :medicines

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
  
end
