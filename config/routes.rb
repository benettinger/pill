Pill::Application.routes.draw do
  devise_for :users

  resources :medicines

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
  
end
