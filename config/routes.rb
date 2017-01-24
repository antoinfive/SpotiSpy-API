Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do 
      resources :accounts
    end
  end
 
  get '/auth', to: 'api/v1/sessions#new', as: 'auth'
  get '/auth/callback', to: 'api/v1/sessions#create', as: 'auth_callback' 

 
end
