Rails.application.routes.draw do
  resources :notes
  resources :expenses
  resources :users


  get '/login', to: 'auth#login'
  patch 'expenses/:id', to: 'expenses#update'
  post 'expenses/new', to: 'expenses#create'
  delete 'expenses/:id', to: 'expenses#delete'
  patch 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
