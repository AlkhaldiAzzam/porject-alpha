Rails.application.routes.draw do

  root 'dashboards#index'
  
  resources :dashboards
  resources :films
  resources :games
  resources :animes
  resources :tv_shows
  devise_for :users

  resources :users do
    resources :films
    resources :games
  resources :animes
  resources :tv_shows
  resources :dashboards

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
