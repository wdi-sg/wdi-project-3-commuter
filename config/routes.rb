Rails.application.routes.draw do

  root 'pages#home'
  get '/about' => 'pages#about'
  get '/comuters' =>'pages#view_commuters'
  get '/contact' => 'pages#contact_us'
  get '/profile' => 'pages#profile'
  get '/dashboard' => 'pages#dashboard'
  get '/matches' => 'pages#matches'
  get '/login' => 'pages#login'
  get '/signup' => 'pages#signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
