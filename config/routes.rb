Rails.application.routes.draw do
  
  resources :users
  resources :expenses
  resources :notes


  post '/signup' =>  'auth#signup'	  
  get '/login', to: 'auth#login' 
 

  get "users" => "users#index"
  get "users/:id" => "users#show"
  patch 'users/:id', to: 'users#update'	
  post 'users/new', to: 'users#create'
  delete 'users/:id', to: 'users#delete'
   


  get "expenses" => "expenses#index"
  get "expenses/:id" => "expenses#show"
  post "expenses/new" => "expenses#create"
  patch "expenses/:id" => "expenses#update"
  delete "expenses/:id" => "expenses#delete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



