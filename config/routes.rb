Rails.application.routes.draw do

  root 'explore#index'

  
  resources :explore 
  resources :dashboards
  resources :films
  resources :games
  resources :animes
  resources :tv_shows
  devise_for :users
  get '/add_film:id'  , to: "explore#add_film"
  get '/add_game:id'  , to: "explore#add_game"
  get '/add_anime:id'  , to: "explore#add_anime"
  get '/add_show:id'  , to: "explore#add_show"
  
  resources :users do
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
