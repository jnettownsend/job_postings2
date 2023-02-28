Rails.application.routes.draw do
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/jobs', to: 'jobs#index'
  
  namespace :openings do

    get '/search', to: 'search#search_jobs'
  end
end
