Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  # users
    get '/users' => 'users#index' 
    get '/users/:id' => 'users#show'
    post '/users' => 'users#create'
    patch '/users/:id' => 'users#update'
    delete '/users/:id' => 'users#destroy'
  # goals
    get '/goals' => 'goals#index' 
    get '/goals/:id' => 'goals#show'
    post '/goals' => 'goals#create'
    patch '/goals/:id' => 'goals#update'
    delete '/goals/:id' => 'goals#destroy'
  end
end
