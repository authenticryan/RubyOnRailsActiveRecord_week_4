Rails.application.routes.draw do

  root to: "todo_lists#index"

  resources :sessions, only: [:new, :create, :destroy]

  get "/login" => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout" 


  resources :users

  resources :todo_lists do
    resources :todo_items, except: [:index]
  end


end
