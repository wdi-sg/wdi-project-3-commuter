Rails.application.routes.draw do
  devise_for :users
    root 'pages#home'
    get '/about' => 'pages#about'
    # post '/about' => update_attributes(params[:post])
    get '/commuters' => 'pages#view_commuters'
    get '/contact' => 'pages#contact_us'
    get '/profile' => 'pages#profile'
    get '/dashboard' => 'pages#dashboard'
    get '/matches' => 'pages#matches'
    get '/login' => 'pages#login'
    get '/signup' => 'pages#signup'
    get 'register' => 'users#new'
    post 'register' => 'users#create'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
