Rails.application.routes.draw do
  get 'users/new' => 'users#new'
  get 'users/login' => 'users#login'
  devise_for :users
  
  
  root to:'posts#index'
  # root 'posts#index'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  get '/about' => 'posts#about'
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  
  get "posts/:id" => "posts#show"
  get 'posts/new' => 'posts#new'
  get 'posts/search' => 'posts#search'
  
  
 
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
