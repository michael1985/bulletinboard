BulletinBoard::Application.routes.draw do
  root :controller => "user_sessions", :action => "new" # optional, this just sets the root route

  resource :user_session
  resource :account, :controller => "users"
  resources :users
end
