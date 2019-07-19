Rails.application.routes.draw do

  get 'animes/index'
  get 'animes/show'
  get 'animes/edit'
  get 'animes/new'
  get 'tv_shows/index'
  get 'tv_shows/show'
  get 'tv_shows/edit'
  get 'tv_shows/new'
  # get 'tv_show/index'
  # get 'tv_show/show'
  # get 'tv_show/edit'
  # get 'tv_show/new'
  # get 'anime/index'
  # get 'anime/show'
  # get 'anime/edit'
  # get 'anime/new'
  # get 'games/index'
  # get 'games/show'
  # get 'games/edit'
  # get 'games/new'
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

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
