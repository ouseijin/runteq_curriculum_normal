Rails.application.routes.draw do
  root to: 'static_pages#top'
  resources :users
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'
end
