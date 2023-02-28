<<<<<<< Updated upstream
Rails.application.routes.draw do
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/jobs', to: 'jobs#index'
  get '/sign-up', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  namespace :openings do

    get '/search', to: 'search#search_jobs'
  end
end
=======
Rails.application.routes.draw do
  resources :jobs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/jobs', to: 'jobs#index'
  get '/sign-up', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  namespace :openings do

    get '/search', to: 'search#search_jobs'
  end
end
>>>>>>> Stashed changes
