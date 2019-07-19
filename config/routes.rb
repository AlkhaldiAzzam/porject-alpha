Rails.application.routes.draw do

  get 'tv_show/index'
  get 'tv_show/show'
  get 'tv_show/edit'
  get 'tv_show/new'
  get 'anime/index'
  get 'anime/show'
  get 'anime/edit'
  get 'anime/new'
  get 'games/index'
  get 'games/show'
  get 'games/edit'
  get 'games/new'
  resources :films
  devise_for :users

  resources :users do
    resources :films

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
