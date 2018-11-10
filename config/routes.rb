Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
  # users
    get '/users' => 'users#index' 
    get '/users/:id' => 'users#show'
  end
end

# 11/7/18
# working on users show action - currently broken

