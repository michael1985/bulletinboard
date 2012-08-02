BulletinBoard::Application.routes.draw do

  root :controller => :home, :action => :index
  get "home/index"

  resources :user_sessions
  resources :users
  resources :bulletins

  match 'login' => "user_sessions#new", :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
end
