Rails.application.routes.draw do
 

  get '/login' =>  'auth#login'
  post '/signup' =>  'auth#signup'


  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete 'users/:id' => 'users#delete'
  
  get "/expenses" => "expenses#index"
  get "/expenses/:id" => "expenses#show"
  post "/expenses" => "expenses#create"
  patch "/expenses/:id" => "expenses#update"
  delete "/expenses/:id" => "expenses#destroy"


  post 'expenses/:id' => 'expenses#update'
  post 'expenses/new', to: 'expenses#create'
  delete 'expenses/:id', to: 'expenses#delete'
  patch 'users/:id', to: 'users#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



