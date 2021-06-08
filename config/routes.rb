Rails.application.routes.draw do
  root to: 'static_pages#top'
  resources :users
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'
  resources :boards do
    resources :comments, only: %i[create], shallow: true
    resource :bookmarks, only: [:create, :destroy]
    collection do
      get :bookmarks
    end
  end
end
