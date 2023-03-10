Rails.application.routes.draw do
  root to: 'home#index'
  namespace :api do
    resources :products, only: [:index, :show]
    resources :companies, only: [:index, :show]
    resources :reviews
    post '/signup', to: 'users#create'
		get '/me', to: 'users#show'

	  post '/login', to: 'sessions#create'
		delete '/logout', to: 'sessions#destroy'
  end

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }
end
