Rails.application.routes.draw do

  root 'explore#index'
 
  
  post "/profile/index/edit" ,to: "profile#update"
  resources :explore 
  resources :dashboards
  resources :films
  resources :games
  resources :animes
  resources :tv_shows
  devise_for :users

  # devise_scope :user do
  #   authenticated :user do
  #     root 'home#index', as: :authenticated_root
  #   end
  
  #   unauthenticated do
  #     root 'explore#index', as: :unauthenticated_root
  #   end
  # end


  get '/add_film:id'  , to: "explore#add_film"
  get '/add_game:id'  , to: "explore#add_game"
  get '/add_anime:id'  , to: "explore#add_anime"
  get '/add_show:id'  , to: "explore#add_show"
  get '/profile/:user_id', to: "profile#index"
  get '/profile/:user_id/edit', to: "profile#edit"
  patch '/profile/:user_id/update', to: "profile#update"
  resources :users do
    # get 'profile' , to: 'profile#index'
    
    #  resources :profile
    resources :films
    resources :games
    resources :animes
    resources :tv_shows
    # resources :dashboards
    resources :explore
    get '/dashboards', to: 'dashboards#index'
    

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
