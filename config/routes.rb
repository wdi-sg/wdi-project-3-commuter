Rails.application.routes.draw do



  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  # devise_for :users, :controllers => { registrations: 'registrations' }
    root 'pages#home'
    get '/about' => 'pages#about'
    # post '/about' => update_attributes(params[:post])
    get '/chat' => 'home#index', :as => 'chats'
    get '/chat/:id' => 'home#show', :as => 'chat'
    get '/commuters' => 'pages#view_commuters'
    post '/commuters' => 'pages#search'
    get '/contact' => 'pages#contact_us'
    get '/profile' => 'pages#profile'
    get '/dashboard' => 'pages#dashboard'
    get '/matches' => 'relationships#index'
    post '/matches' => 'relationships#create'
    # get '/matches' => 'pages#matches'
    # get '/combos' => 'pages#combos'
    get '/login' => 'pages#login'
    get '/signup' => 'pages#signup'
    get 'register' => 'users#new'
    post 'register' => 'users#create'
    get '/myinterests' => 'interests#display'

    resources :travels
    resources :interests do
      post :register
    end

    resources :relationships, only: [:destroy]

    resources :conversations, only: [:create, :show] do
    member do
    post :close
    end
    resources :messages, only: [:create]
  end

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
